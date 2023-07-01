/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import models.Account;
import models.OrderToManage;
import models.SecurityQuestion;

/**
 *
 * @author dinhd513
 */
public class ChangeSQOfUser extends HttpServlet {

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
            out.println("<title>Servlet ChangeSQOfUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeSQOfUser at " + request.getContextPath() + "</h1>");
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
        DAO dao = new DAO();

        HttpSession session = request.getSession();
        Object o = session.getAttribute("account");
        Account acc = (Account) o;
        if (acc == null) {
            response.sendRedirect("error404.jsp");

        } else {
            List<SecurityQuestion> list = dao.getAllQuestion();
            String question = "";
            for (SecurityQuestion s : list) {
                if (s.getQuesId() == acc.getQuesId()) {
                    question = s.getQuesion();
                }
            }
            request.setAttribute("oldQ", question);
            request.setAttribute("oldAnswer", o);
            
            request.setAttribute("listQ", list);
            request.setAttribute("none1", "none");
            request.setAttribute("none", "none");
            request.setAttribute("none3", "block");
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
        Object o = session.getAttribute("account");
        Account acc = (Account) o;
        if (acc == null) {
            response.sendRedirect("error404.jsp");

        } else {
            if (request.getParameter("accPass").equals(acc.getAccPassword())) {
                String accId = acc.getAccId();
            String accPass = acc.getAccPassword();
            DAO dao = new DAO();
            try {
                int quesId = Integer.parseInt(request.getParameter("quesId"));
                String answer = request.getParameter("accAnswer");

                dao.ChangeSQId(accId, quesId, answer);
            } catch (NumberFormatException e) {
            }
            request.setAttribute("mess", "Update success");
            Account accc = dao.getAccount(accId, accPass);
            session.setAttribute("account", accc);
            List<OrderToManage> list2 = dao.getListOrderOfUser(accId);
            request.setAttribute("listOrderOfUser", list2);
            request.getRequestDispatcher("userInfo.jsp").forward(request, response);
            }else{
                request.setAttribute("mess", "Wrong Password");
                request.setAttribute("none", "none");
                request.getRequestDispatcher("userInfo.jsp").forward(request, response);
            }
            
        }

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
