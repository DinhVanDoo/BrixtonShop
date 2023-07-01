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
import java.util.List;
import models.SecurityQuestion;

/**
 *
 * @author dinhd513
 */
public class FogotPasswordControl extends HttpServlet {

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
        List<SecurityQuestion> list = dao.getAllQuestion();
        request.setAttribute("listQues", list);
        request.getRequestDispatcher("fogotPassword.jsp").forward(request, response);
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

        String id = request.getParameter("username");

        String newpass = request.getParameter("newpassword");
        String repass = request.getParameter("repassword");
        int quesId = Integer.parseInt(request.getParameter("quesId"));
        DAO dao = new DAO();
        String answer = request.getParameter("answer");

        if (dao.searchAccByID(id) != null) {
            if (dao.searchAccByID(id).getQuesId() == quesId && dao.searchAccByID(id).getAnswer().equalsIgnoreCase(answer)) {
                if (!newpass.equals(repass)) {
                    request.setAttribute("mess", "New Pass and RE Pass must be same");
                } else {
                    dao.updatePassByaccId(id, newpass);
                    request.setAttribute("mess", "Success");
                }
            } else {
                request.setAttribute("mess", "Maybe the wrong question or the answer");
            }

        } else {
            request.setAttribute("mess", "id does not exist");
        }
        List<SecurityQuestion> list = dao.getAllQuestion();
        request.setAttribute("listQues", list);
        request.getRequestDispatcher("fogotPassword.jsp").forward(request, response);

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
