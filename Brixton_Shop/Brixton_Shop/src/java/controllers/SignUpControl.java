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
public class SignUpControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        DAO dao = new DAO();
        String accId = request.getParameter("id");
        String accPass = request.getParameter("psw");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String accPassRepeat = request.getParameter("pswrepeat");
        int quesId = Integer.parseInt(request.getParameter("quesId"));
        String answer = request.getParameter("answer");
        if (!accPass.equals(accPassRepeat)) {
            request.setAttribute("messErrorPass", "Password and Re-Password must be the same");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }else{
            if (dao.searchAccByID(accId)== null) {
                dao.addAccount(accId, accPass, name,address ,phone,quesId,answer );
                request.getRequestDispatcher("login").forward(request, response);
            }else{
                request.setAttribute("messErrorID", "Username is exist");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        DAO dao = new DAO();
        List<SecurityQuestion> list = dao.getAllQuestion();
        request.setAttribute("listQues", list);
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
