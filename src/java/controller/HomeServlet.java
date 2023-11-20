/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.categoryDAO;
import dal.postDAO;
import dal.productDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.category;
import model.post;
import model.product;

/**
 *
 * @author Nguyen Manh Tien
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

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
        categoryDAO d = new categoryDAO();
        postDAO b = new postDAO();
        try {
            productDAO c = new productDAO();
            List<product> list = c.getAllProduct();
            List<product> listSale = c.getAllProductBySale();
            List<product> listDate = c.getAllProductByDate();
            List<product> listHot = c.getAllProductHot();
            List<product> listSell = c.getAllproductSell();
            request.setAttribute("productbyall", list);
            request.setAttribute("productbySale", listSale);
            request.setAttribute("productbyDate", listDate);
            request.setAttribute("productbyHot", listHot);
            request.setAttribute("productbySell", listSell);
        } catch (NumberFormatException e) {

        }
        List<category> list = d.getAllCategory();
        List<post> listPost = b.getAllPost();
        request.setAttribute("category", list);
        request.setAttribute("listPost", listPost);
        request.getRequestDispatcher("home.jsp").forward(request, response);
        
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
        processRequest(request, response);
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
