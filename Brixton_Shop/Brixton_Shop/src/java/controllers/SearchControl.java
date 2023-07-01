/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controllers;

import dal.DAO;
import dal.PagingProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

import models.Product;

/**
 *
 * @author dinhd513
 */
public class SearchControl extends HttpServlet {
   
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
//        DAO dao = new DAO();
//        PagingProductDAO paginDao = new PagingProductDAO();
//        
//        String txtSearch = request.getParameter("search");     
//        String indexPage = request.getParameter("index3");
//        request.setAttribute("txt", txtSearch);
//        if (indexPage == null) {
//            indexPage = "1";
//        }
//        int index = Integer.parseInt(indexPage);
//        if (index == 0) {
//            index = 1;
//        }
//        int total = paginDao.getTotalAllProductByName(txtSearch);
//        int endPage = total/6;
//        if(endPage%6 !=0){
//            endPage++;
//        }
//        if (index >= endPage) {
//            index = endPage;              
//        }
//        
//        List<Product> list = paginDao.pagingAllProductByproName(1,txtSearch);
//        request.setAttribute("listProduct", list);
//        request.setAttribute("endPage3", endPage);
//        request.setAttribute("indexNow3", 1);
//        request.setAttribute("none1", "none");
//        request.setAttribute("none2", "none");
//        request.setAttribute("none3", "block");
//        request.getRequestDispatcher("shopAll.jsp").forward(request, response);
        

        
        
        
        
        
        
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
//        try {
//            DAO dao = new DAO();
//        PagingProductDAO paginDao = new PagingProductDAO();
//        
//        String txtSearch = request.getParameter("searchtxt");     
//        String indexPage = request.getParameter("index3");
//        
//        request.setAttribute("txtSearch", txtSearch);
//        
//        int index = Integer.parseInt(indexPage);
//        if (index <= 0) {
//            index = 1;
//        }
//        int total = paginDao.getTotalAllProductByName(txtSearch);
//        int endPage = total/6;
//        if(endPage%6 !=0){
//            endPage++;
//        }
//        if (index >= endPage) {
//            index = endPage;              
//        }
//        
//        List<Product> listp = paginDao.pagingAllProductByproName(index,txtSearch);
//        request.setAttribute("listProduct", listp);
//        request.setAttribute("endPage3", endPage);
//        request.setAttribute("indexNow3", index);
//        request.setAttribute("none1", "none");
//        request.setAttribute("none2", "none");
//        request.setAttribute("none3", "block");
//        } catch (NumberFormatException e) {
//        }
//        
//        request.getRequestDispatcher("shopAll.jsp").forward(request, response);
        
                DAO dao = new DAO();
        PagingProductDAO paginDao = new PagingProductDAO();
        
        String txt = request.getParameter("searchtxt");
        List<Product> listP = dao.getAllProductByName(txt);
        if(listP.size() == 0){
            request.setAttribute("mess", "Don't have product have this name");
            request.setAttribute("messDisplay", "block ;text-align: center; margin: 200px");
            
        }else{
            request.setAttribute("messDisplay", "none");
        }
        request.setAttribute("none1", "none");
        request.setAttribute("none2", "none");
        request.setAttribute("none3", "none");
       
        
        request.setAttribute("listProduct", listP);
        request.getRequestDispatcher("shopAll.jsp").forward(request, response);
   
       
        
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
        PagingProductDAO paginDao = new PagingProductDAO();
        
        String txt = request.getParameter("searchtxt");
        List<Product> listP = dao.getAllProductByName(txt);
        
        if(listP.size() == 0){
            request.setAttribute("mess", "Don't have product have this name");
            request.setAttribute("messDisplay", "block ;text-align: center; margin: 200px");
            
        }else{
            request.setAttribute("messDisplay", "none");
        }
        request.setAttribute("none1", "none");
        request.setAttribute("none2", "none");
        request.setAttribute("none3", "block");
       
        
        request.setAttribute("listProduct", listP);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
     
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
