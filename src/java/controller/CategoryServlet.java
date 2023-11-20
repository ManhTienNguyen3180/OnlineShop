/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.categoryDAO;
import dal.productDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.category;
import model.product;

/**
 *
 * @author Nguyen Manh Tien
 */
@WebServlet(name = "CategoryServlet", urlPatterns = {"/category"})
public class CategoryServlet extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
        String cid_raw = request.getParameter("cid");
        String nxb_name = request.getParameter("NXB");
        String min_raw = request.getParameter("min");
        String max_raw = request.getParameter("max");
        String path = request.getQueryString();
        String sort_raw = request.getParameter("sort");
        
        categoryDAO d = new categoryDAO();
        List<category> list = d.getAllCategory();
        int cid = 0;
        int min = 0, max = 0;
        
        if (min_raw != null && !min_raw.isEmpty()) {
            try {
                min = Integer.parseInt(min_raw);
            } catch (NumberFormatException ex) {

            }
        }
        if (max_raw != null && !max_raw.isEmpty()) {
            try {
                max = Integer.parseInt(max_raw);
            } catch (NumberFormatException ex) {

            }
        }
        productDAO c = new productDAO();
        List<String> listallNXB = c.getAllNXB();
        
        if (cid_raw != null) {
            cid = Integer.parseInt(cid_raw);
            int count = c.getPagesize(cid, null, 0, 0);
            String index_raw = request.getParameter("index");
            if (index_raw == null) {
                index_raw = "1";
            }
            int index = Integer.parseInt(index_raw);
            int pageSize = 9;
            int endPage = 0;
            endPage = count / pageSize;
            if (count % pageSize != 0) {
                endPage++;
            }
            List<product> listbyPa = c.getProductByPaging(index, cid, null, 0, 0);
            request.setAttribute("endPage", endPage);
            request.setAttribute("listbyPa", listbyPa);
            request.setAttribute("index", index);
            if (path.contains("index")) {
                path = null;
            } else {
                path = request.getQueryString();
            }
            request.setAttribute("path", path);
        } else if(sort_raw != null && !sort_raw.equals("-1")){
            int sort = Integer.parseInt(sort_raw);
            List<product> listbyPa = c.getAllProductBysort(sort);
            
            request.setAttribute("listbyPa", listbyPa);
            
        }
        else if (nxb_name != null) {
            int count = c.getPagesize(0, nxb_name, 0, 0);
            String index_raw = request.getParameter("index");
            if (index_raw == null) {
                index_raw = "1";
            }
            int index = Integer.parseInt(index_raw);
            int pageSize = 9;
            int endPage = 0;
            endPage = count / pageSize;
            if (count % pageSize != 0) {
                endPage++;
            }
            List<product> listbyPa = c.getProductByPaging(index, 0, nxb_name, 0, 0);
            request.setAttribute("endPage", endPage);
            request.setAttribute("listbyPa", listbyPa);
            request.setAttribute("index", index);
            if (path.contains("index")) {
                
                String[] result = path.split("&");
                request.setAttribute("path", result[0]);
            } else {
                path = request.getQueryString();
                request.setAttribute("path", path);
            }
            
            if (listbyPa.isEmpty()) {
                request.setAttribute("message", "Không tìm thấy sách");
            }
        } else if (min_raw != null && max_raw != null) {

            int count = c.getPagesize(0, null, min, max);
            String index_raw = request.getParameter("index");
            if (index_raw == null) {
                index_raw = "1";
            }
            int index = Integer.parseInt(index_raw);
            int pageSize = 9;
            int endPage = 0;
            endPage = count / pageSize;
            if (count % pageSize != 0) {
                endPage++;
            }
            List<product> listbyPa = c.getProductByPaging(index, 0, null, min, max);
            request.setAttribute("endPage", endPage);
            request.setAttribute("listbyPa", listbyPa);
            request.setAttribute("index", index);
            if (path.contains("index")) {
                
                String[] result = path.split("&(?=[^&]*$)");
                request.setAttribute("path", result[0]);
            } else {
                path = request.getQueryString();
                request.setAttribute("path", path);
            }
            if (listbyPa.isEmpty()) {
                request.setAttribute("message", "Không tìm thấy sách");
            }
        } else {

            int count = c.getPagesize(0, null, 0, 0);
            String index_raw = request.getParameter("index");
            if (index_raw == null) {
                index_raw = "1";
            }
            int index = Integer.parseInt(index_raw);
            int pageSize = 9;
            int endPage = 0;
            endPage = count / pageSize;
            if (count % pageSize != 0) {
                endPage++;
            }
            List<product> listbyPa = c.getProductByPaging(index, 0, null, 0, 0);
            request.setAttribute("endPage", endPage);
            request.setAttribute("listbyPa", listbyPa);
            request.setAttribute("index", index);
        }
        request.setAttribute("productall", listallNXB);
        request.setAttribute("category", list);

        request.getRequestDispatcher("category_detail.jsp").forward(request, response);

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
