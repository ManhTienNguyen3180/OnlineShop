/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.categoryDAO;
import dal.productDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.List;
import model.category;
import model.product;

/**
 *
 * @author Nguyen Manh Tien
 */
@WebServlet(name = "CreateProductServlet", urlPatterns = {"/create"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class CreateProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String UPLOAD_DIR = "upload";
    public String dbFileName = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String product_name = request.getParameter("product_name");
        String product_author = request.getParameter("author");
        String product_nxb = request.getParameter("NXB");
        String product_kichthuoc = request.getParameter("kichthuoc");
        String product_loaibia = request.getParameter("loaibia");
        String giaban_raw = request.getParameter("price");
        String giabanSale_raw = request.getParameter("priceSale");
        String category_id_raw = request.getParameter("category_id");
        String sotrang_raw = request.getParameter("sotrang");
        String quantity_raw = request.getParameter("quantity");
        String mota = request.getParameter("script");
        String isHot_raw = request.getParameter("isHot");
        if (isHot_raw == null) {
            isHot_raw = "0";
        }

        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name

        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);

        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
        productDAO d = new productDAO();
        d.insert(product_name, product_author, product_nxb, product_kichthuoc, product_loaibia,
                    Integer.parseInt(sotrang_raw), dbFileName, Integer.parseInt(giaban_raw), 
                    Integer.parseInt(giabanSale_raw), mota, Integer.parseInt(quantity_raw), Integer.parseInt(category_id_raw), Integer.parseInt(isHot_raw));
        response.sendRedirect("adminproduct");
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
        categoryDAO c = new categoryDAO();
        List<category> list = c.getAllCategory();
        request.setAttribute("listC", list);
        request.getRequestDispatcher("creatproduct.jsp").forward(request, response);
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

    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
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
