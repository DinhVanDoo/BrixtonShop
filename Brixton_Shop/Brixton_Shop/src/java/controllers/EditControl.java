/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Account;

/**
 *
 * @author dinhd513
 */
public class EditControl extends HttpServlet {

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
        processRequest(request, response);
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
        if (acc == null|| acc.getRole() == 1) {
            response.sendRedirect("error404.jsp");
        } else {
            int proId = Integer.parseInt(request.getParameter("proId"));
        String proName = request.getParameter("proName");
        String proImg = request.getParameter("proImg");
        String proImgNew = request.getParameter("proImgNew");
        float proPrice = Float.parseFloat(request.getParameter("proPrice"));
        String proDetail = request.getParameter("proDetail");
        int caId = Integer.parseInt(request.getParameter("caId"));
        int coId = Integer.parseInt(request.getParameter("coId"));
        
        if(proPrice >= 0){
            DAO dao = new DAO();
        if (proImgNew.equals("")) {
            dao.updateProduct1(proName, proImg, proPrice, proDetail, caId, coId, proId);
        } else {
            dao.updateProduct(proName, proImgNew, proPrice, proDetail, caId, coId, proId);
        }

        response.sendRedirect("manage");
        }else{
            request.setAttribute("mess", "price must be >= 0");
            response.sendRedirect("getproduct");
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
