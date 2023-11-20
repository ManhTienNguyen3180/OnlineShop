/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import dal.DAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.orderDetail;
import model.product;
import model.users;


/**
 *
 * @author Nguyen Manh Tien
 */
@WebServlet(name="ThongKeServlet", urlPatterns={"/thongke"})
public class ThongKeServlet extends HttpServlet {
   
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ThongKeServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ThongKeServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
//        OrderDAO o = new OrderDAO();
//        List<product> list = o.getAllproductSell();    
//        
//        Gson gson = new Gson();
//        JsonElement element = gson.toJsonTree(list, new TypeToken<List<product>>() {}.getType());
//        JsonArray jsonArray = element.getAsJsonArray();
//        
//        response.setContentType("application/json");
//        response.getWriter().println(jsonArray);  
          OrderDAO d = new OrderDAO();
          DAO c = new DAO();
          int total = d.getSoLuongDaBan();
          int ton = d.getSoLuongTonKho();
          int doanhthu = d.getTongDoanhThu();
          int hoadon = d.getTongHoaDon();
          List<users> list = c.getAllUser();
          request.setAttribute("total", total);
          request.setAttribute("ton", ton);
          request.setAttribute("doanhthu", doanhthu);
          request.setAttribute("hoadon", hoadon);
          request.setAttribute("listUser", list);
          request.getRequestDispatcher("admin.jsp").forward(request, response);
       
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
//        OrderDAO o = new OrderDAO();
//        List<orderDetail> listo = o.getAllproductSellbyCt();
//        Gson gson = new Gson();
//        JsonElement element2 = gson.toJsonTree(listo, new TypeToken<List<product>>() {}.getType());
//        JsonArray jsonArray2 = element2.getAsJsonArray();
//        response.setContentType("application/json");
//        response.getWriter().println(jsonArray2);
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
