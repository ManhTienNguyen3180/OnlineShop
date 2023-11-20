/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import static controller.CreateProductServlet.UPLOAD_DIR;
import dal.categoryDAO;
import dal.productDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.List;
import model.category;
import model.product;
import model.users;

/**
 *
 * @author Nguyen Manh Tien
 */
@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/update"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class UpdateProductServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");

        try {
            HttpSession session = request.getSession();
            users u = (users) session.getAttribute("account");
            if (u != null && u.getRole() == 1) {

                String product_id_raw = request.getParameter("product_id");
                String product_name = request.getParameter("product_name");
                String product_author = request.getParameter("author");
                String product_nxb = request.getParameter("NXB");
                String product_kichthuoc = request.getParameter("kichthuoc");
                String product_loaibia = request.getParameter("loaibia");
                String product_img = uploadFile(request);
                String giaban_raw = request.getParameter("price");
                String giabanSale_raw = request.getParameter("priceSale");
                String category_id_raw = request.getParameter("category_id");
                String sotrang_raw = request.getParameter("sotrang");
                String quantity_raw = request.getParameter("quantity");
                String mota = request.getParameter("script");
                String isHot_raw = request.getParameter("isHot");
                productDAO p = new productDAO();
                product book = p.getProductById(Integer.parseInt(product_id_raw));

                if (product_name.isEmpty()) {

                    product_name = book.getProduct_name();
                }
                if (product_author.isEmpty()) {

                    product_author = book.getProduct_author();
                }
                if (product_nxb.isEmpty()) {

                    product_nxb = book.getProduct_nxb();
                }
                if (product_kichthuoc.isEmpty()) {

                    product_kichthuoc = book.getProduct_kichthuoc();
                }
                if (product_loaibia.isEmpty()) {

                    product_loaibia = book.getProduct_loaibia();
                }
                if (product_img == null) {

                    product_img = book.getProduct_img();
                }
                if (giaban_raw.isEmpty()) {

                    giaban_raw = String.valueOf(book.getPrice());
                }
                if (giabanSale_raw.isEmpty()) {

                    giabanSale_raw = String.valueOf(book.getPriceSale());
                }
                if (category_id_raw.isEmpty()) {

                    category_id_raw = String.valueOf(book.getCt().getCid());
                }
                if (sotrang_raw.isEmpty()) {

                    sotrang_raw = String.valueOf(book.getProduct_sotrang());
                }
                if (quantity_raw.isEmpty()) {

                    quantity_raw = String.valueOf(book.getQuantity());
                }
                if (mota.isEmpty()) {

                    mota = book.getProduct_description();
                }
                if (isHot_raw.isEmpty()) {

                    isHot_raw = String.valueOf(book.getProduct_ishot());
                }

                categoryDAO category = new categoryDAO();
                product b = new product(Integer.parseInt(product_id_raw), product_name, product_author, product_nxb,
                        product_kichthuoc, product_loaibia, Integer.parseInt(sotrang_raw), product_img,
                        Integer.parseInt(giaban_raw), Integer.parseInt(giabanSale_raw), mota, Integer.parseInt(quantity_raw),
                        Integer.parseInt(isHot_raw), category.getCategoryByID(Integer.parseInt(category_id_raw)));

                p.update(b);
                request.setAttribute("mess", "Cập nhật thông tin thành công");
                response.sendRedirect("adminproduct");
            } else {
                request.setAttribute("message", "Login first.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private String uploadFile(HttpServletRequest request) throws IOException, ServletException {
        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name
        if (part!= null && fileName != null) {     
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
            return dbFileName;
        }else{
            return null;    
        }
         
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
        String product_id_raw = request.getParameter("product_id");
        int product_id = Integer.parseInt(product_id_raw);
        productDAO d = new productDAO();
        categoryDAO c = new categoryDAO();
        product p = d.getProductById(product_id);
        List<category> list = c.getAllCategory();
        request.setAttribute("list", list);
        request.setAttribute("product", p);
        request.getRequestDispatcher("updateproduct.jsp").forward(request, response);
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
        /* TODO output your page here. You may use following sample code. */

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
