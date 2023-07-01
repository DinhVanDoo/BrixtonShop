/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Account;

/**
 *
 * @author dinhd513
 */
@WebServlet(name = "ChangePassOfUser", urlPatterns = {"/changePassOfUser"})
public class ChangePassOfUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePassOfUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassOfUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Object o = session.getAttribute("account");
        Account acc = (Account) o;
        if (acc == null) {
            response.sendRedirect("error404.jsp");

        } else {
            request.setAttribute("none1", "none");
            request.setAttribute("none2", "block");
            request.setAttribute("none", "none");
            request.getRequestDispatcher("userInfo.jsp").forward(request, response);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        DAO dao = new DAO();
        Object o = session.getAttribute("account");
        request.setAttribute("none1", "none");
        request.setAttribute("none2", "block");
        request.setAttribute("none", "none");
        Account acc = (Account) o;
        Account acc2 = dao.getAccount(acc.getAccId(), acc.getAccPassword());
        String oldPass = request.getParameter("accPass");
        String newPass = request.getParameter("accNewPass");
        String reNewPass = request.getParameter("accReNewPass");

        if (acc2.getAccPassword().equals(oldPass)) {
            if (newPass.equals(reNewPass) && !newPass.equals(acc2.getAccPassword())) {

                dao.updatePassByaccId(acc2.getAccId(), newPass);
                request.setAttribute("mess2", "Update Success");
                Account acc3 = dao.getAccount(acc.getAccId(), newPass);
                session.setAttribute("account", acc3);

            } else {
                request.setAttribute("mess2", "New password and Renew password must be same and New password not same old password");
            }
        } else {
            request.setAttribute("mess2", "Old Password is wrong");

        }
        request.setAttribute("none", "none");
        request.getRequestDispatcher("userInfo.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
