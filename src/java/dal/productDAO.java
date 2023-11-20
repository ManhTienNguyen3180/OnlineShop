/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import model.Item;
import model.cart;
import model.category;
import model.product;
import model.users;

/**
 *
 * @author Nguyen Manh Tien
 */
public class productDAO extends DBContext {

    public List<product> getAllProduct() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int getPagesize(int cid, String nxb_name, int min_raw, int max_raw) {
        String sql = "select count(*) from product p where 1=1";
        if (cid != 0) {
            sql += " and p.category_id = " + cid;
        }
        if (nxb_name != null) {
            sql += " and p.product_nxb like " + "N'%" + nxb_name + "%'";
        }
        if (min_raw != 0 && max_raw != 0) {
            sql += " and (p.priceSale>=" + min_raw + " and p.priceSale<=" + max_raw + ")";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public List<product> getProductByPaging(int index, int cid, String nxb_name, int min_raw, int max_raw) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product p "
                + "where 1=1 ";
        if (cid != 0) {
            sql += " and p.category_id = " + cid + " order by p.product_id offset " + ((index - 1)) + " rows fetch next 12 rows only ";
        }
        if (nxb_name != null) {
            sql += " and p.product_nxb like " + "N'" + nxb_name + "'" + " order by p.product_id offset " + ((index - 1) * 9) + " rows fetch next 12 rows only ";
        }
        if (cid == 0 && nxb_name == null && min_raw != 0 && max_raw != 0) {
            sql += " and (p.priceSale>=" + min_raw + " and p.priceSale<=" + max_raw + ") order by p.priceSale offset " + ((index - 1) * 9) + " rows fetch next 12 rows only ";
        }
        if (cid == 0 && nxb_name == null && min_raw == 0 && max_raw == 0) {
            sql += " order by p.product_id offset " + ((index - 1) * 9) + " rows fetch next 9 rows only";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<product> getAllProductHot() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product where product_ishot = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductBysort(int sort) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product p \n";
        if (sort == 1) {
            sql += "order by p.product_name asc";
        }
        if (sort == 2) {
            sql += "order by p.product_name desc";
        }
        if (sort == 3) {
            sql += "order by p.priceSale asc";
        }
        if (sort == 4) {
            sql += "order by p.priceSale desc";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductByTonHang(int thang) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product p where p.quantity > 0 \n";
        if (thang == 1) {
            sql += "and (DATEDIFF(d,p.created_at,getdate()) >= 30)";
        }
        if (thang == 3) {
            sql += "and (DATEDIFF(d,p.created_at,getdate()) >= 90)";
        }
        if (thang == 5) {
            sql += "and (DATEDIFF(d,p.created_at,getdate()) >= 150)";
        }
        if (thang == 12) {
            sql += "and (DATEDIFF(d,p.created_at,getdate()) >= 365)";
        }

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getDoanhThu(int year) {
        List<product> list = new ArrayList<>();
        String sql = "select sum(o.total_amout) as total,month(o.created_at) as Thang from [order] o \n"
                + "where (o.payment = 'COD' or o.payment = 'VNPAY') and year(o.created_at) = ?\n"
                + "group by month(o.created_at)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, year);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                product c = new product(rs.getInt("total"), rs.getInt("Thang"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllproductSell() {
        List<product> list = new ArrayList<>();
        String sql = "select top 10 sum(o.quantity) as total,o.product_id,o.product_name from [order_detail] o \n"
                + "group by o.product_id,o.product_name order by total desc";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String sql2 = "select * from product where product_id=?";
                PreparedStatement st2 = connection.prepareStatement(sql2);
                st2.setInt(1, rs.getInt("product_id"));
                ResultSet rs2 = st2.executeQuery();
                while (rs2.next()) {
                    categoryDAO dao = new categoryDAO();
                    category category = dao.getCategoryByID(rs2.getInt("category_id"));
                    product c = new product(rs2.getInt("product_id"), rs2.getString("product_name"), rs2.getString("product_author"),
                            rs2.getString("product_nxb"), rs2.getString("product_kichthuoc"), rs2.getString("product_loaibia"),
                            rs2.getInt("product_sotrang"), rs2.getString("product_img"), rs.getInt("total"), rs2.getInt("priceSale"),
                            rs2.getString("product_description"), rs2.getInt("quantity"), rs2.getInt("product_ishot"),
                            rs2.getInt("pro_review_total"), rs2.getDate("created_at"), rs2.getDate("update_at"), category);
                    list.add(c);
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String> getAllNXB() {
        List<String> list = new ArrayList<>();
        String sql = "select product_nxb from product group by product_nxb";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("product_nxb"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductByNXB(String nxb) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product p where p.product_nxb = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, nxb);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public product getProductById(int id) {
        String sql = "select * from product where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<product> getAllProductByCid(int cid) {
        List<product> list = new ArrayList<>();
        String sql = "select * from product where 1=1";
        if (cid != 0) {
            sql += " and category_id=" + cid;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(cid);
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductByName(String name) {
        List<product> list = new ArrayList<>();
        String sql = "select p.product_id,p.category_id,p.product_author,convert(nvarchar(max), p.product_description) as [description],p.product_img,\n"
                + "p.created_at,p.priceSale,p.price,p.product_ishot,p.product_kichthuoc,p.product_loaibia,p.product_name,\n"
                + "p.product_nxb,p.product_sotrang,p.quantity,p.pro_review_total,p.update_at\n"
                + "from product p\n"
                + "join key_word k \n"
                + "on p.category_id = k.c_id\n"
                + "where k.[key_name] = ? or p.product_name like ?\n"
                + "group by p.product_id,p.category_id,p.product_author,convert(nvarchar(max), p.product_description),p.product_img,\n"
                + "p.created_at,p.priceSale,p.price,p.product_ishot,p.product_kichthuoc,p.product_loaibia,p.product_name,\n"
                + "p.product_nxb,p.product_sotrang,p.quantity,p.pro_review_total,p.update_at";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, "%"+name+"%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//    public List<product> getAllProductByName(String name) {
//        List<product> list = new ArrayList<>();
//        String sql = "select * from product p \n"
//                + "where p.product_name like ?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, "%" + name + "%");
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                categoryDAO dao = new categoryDAO();
//                category category = dao.getCategoryByID(rs.getInt("category_id"));
//                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
//                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
//                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
//                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
//                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
//                list.add(c);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
    public List<product> getAllProductByPrice(int min, int max) {
        if (min > max) {
            int temp = min;
            min = max;
            max = temp;
        }
        List<product> list = new ArrayList<>();
        String sql = "select * from product p where (p.priceSale>= ? and p.priceSale<= ?)\n"
                + "order by p.priceSale ASC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, min);
            st.setInt(2, max);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductBySale() {
        List<product> list = new ArrayList<>();
        String sql = "select * from product p \n"
                + "where (p.price-p.priceSale)>0\n"
                + "order by (p.price-p.priceSale) DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllProductByDate() {
        List<product> list = new ArrayList<>();
        String sql = "SELECT * from product p \n"
                + "where DATEDIFF(d, p.created_at, GETDATE()) < 18";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO dao = new categoryDAO();
                category category = dao.getCategoryByID(rs.getInt("category_id"));
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_author"),
                        rs.getString("product_nxb"), rs.getString("product_kichthuoc"), rs.getString("product_loaibia"),
                        rs.getInt("product_sotrang"), rs.getString("product_img"), rs.getInt("price"), rs.getInt("priceSale"),
                        rs.getString("product_description"), rs.getInt("quantity"), rs.getInt("product_ishot"),
                        rs.getInt("pro_review_total"), rs.getDate("created_at"), rs.getDate("update_at"), category);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addOrder(users c, cart cart, String payment) throws ParseException {
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        try {
            //add order
            String sql = "INSERT INTO [dbo].[order]\n"
                    + "           ([username]\n"
                    + "           ,[phone]\n"
                    + "           ,[user_id]\n"
                    + "           ,[total_amout]\n"
                    + "           ,[payment]\n"
                    + "           ,[created_at]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getUser_name());
            st.setInt(2, c.getUser_phone());
            st.setInt(3, c.getUser_id());
            st.setInt(4, cart.getTotalMoney());
            st.setString(5, payment);
            st.setDate(6, date);
            st.setString(7, c.getUser_address());
            st.executeUpdate();
            //lay id cua order vua add

            String sql1 = "select top 1 order_id from [dbo].[order] order by order_id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add bang OrderDetail
            while (rs.next()) {
                int oid = rs.getInt("order_id");
                for (Item i : cart.getItems()) {
                    String sql2 = "INSERT INTO [dbo].[order_detail]\n"
                            + "           ([order_id]\n"
                            + "           ,[product_id]\n"
                            + "           ,[product_name]\n"
                            + "           ,[quantity]\n"
                            + "           ,[price_sale]\n"
                            + "           ,[category_id]\n"
                            + "           ,[created_at])\n"
                            + "     VALUES\n"
                            + "           (?,?,?,?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getProduct_id());
                    st2.setString(3, i.getProduct().getProduct_name());
                    st2.setInt(4, i.getQuantity());
                    st2.setInt(6, i.getProduct().getCt().getCid());
                    st2.setInt(5, i.getPrice());
                    st2.setDate(7, date);
                    st2.executeUpdate();
                }
            }
            //cap nhat lai so luong san pham
            String sql3 = "update product set quantity=quantity-? where product_id=?";
            PreparedStatement st3 = connection.prepareStatement(sql3);
            for (Item i : cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getProduct_id());
                st3.executeUpdate();
            }
        } catch (SQLException e) {

        }
    }

    public void insert(String name, String product_author, String product_nxb, String product_kichthuoc, String product_loaibia, int product_sotrang, String product_img, int price, int priceSale,
            String product_description, int quantity, int category_id, int product_ishot) {

        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        String sql = "INSERT INTO [dbo].[product]\n"
                + "           ([product_name]\n"
                + "           ,[product_author]\n"
                + "           ,[product_nxb]\n"
                + "           ,[product_kichthuoc]\n"
                + "           ,[product_loaibia]\n"
                + "           ,[product_sotrang]\n"
                + "           ,[product_img]\n"
                + "           ,[price]\n"
                + "           ,[priceSale]\n"
                + "           ,[product_description]\n"
                + "           ,[quantity]\n"
                + "           ,[category_id]\n"
                + "           ,[created_at]\n"
                + "           ,[product_ishot])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, product_author);
            st.setString(3, product_nxb);
            st.setString(4, product_kichthuoc);
            st.setString(5, product_loaibia);
            st.setInt(6, product_sotrang);
            st.setString(7, product_img);
            st.setInt(8, price);
            st.setInt(9, priceSale);
            st.setString(10, product_description);
            st.setInt(11, quantity);
            st.setInt(12, category_id);
            st.setDate(13, date);
            st.setInt(14, product_ishot);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(product c) {
        String spl = "UPDATE [dbo].[product]\n"
                + "   SET [product_name] = ?\n"
                + "      ,[product_author] = ?\n"
                + "      ,[product_nxb] = ?\n"
                + "      ,[product_kichthuoc] = ?\n"
                + "      ,[product_loaibia] = ?\n"
                + "      ,[product_sotrang] = ?\n"
                + "      ,[product_img] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[priceSale] = ?\n"
                + "      ,[product_description] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[category_id] = ?\n"
                + "      ,[product_ishot] = ?\n"
                + " WHERE product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(spl);
            st.setString(1, c.getProduct_name());
            st.setString(2, c.getProduct_author());
            st.setString(3, c.getProduct_nxb());
            st.setString(4, c.getProduct_kichthuoc());
            st.setString(5, c.getProduct_loaibia());
            st.setInt(6, c.getProduct_sotrang());
            st.setString(7, c.getProduct_img());
            st.setInt(8, c.getPrice());
            st.setInt(9, c.getPriceSale());
            st.setString(10, c.getProduct_description());
            st.setInt(11, c.getQuantity());
            st.setInt(12, c.getCt().getCid());
            st.setInt(13, c.getProduct_ishot());
            st.setInt(14, c.getProduct_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(int id) {
        String spl = "DELETE FROM [dbo].[product]\n"
                + "      WHERE product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(spl);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
