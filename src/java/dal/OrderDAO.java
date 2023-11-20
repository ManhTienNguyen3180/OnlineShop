/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.category;
import model.order;
import model.orderDetail;
import model.product;

/**
 *
 * @author Nguyen Manh Tien
 */
public class OrderDAO extends DBContext {

    public List<order> getAllOrder() {
        List<order> list = new ArrayList<>();
        String sql = "select * from [order]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order c = new order(rs.getInt("order_id"), rs.getInt("user_id"), rs.getString("username"),
                        rs.getInt("phone"), rs.getInt("total_amout"), rs.getString("payment"), rs.getString("address"),
                        rs.getDate("created_at"), rs.getDate("update_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getAllproductSell(int year) {
        List<product> list = new ArrayList<>();
        String sql = "select top 10 sum(o.quantity) as total,o.product_id,o.product_name from [order_detail] o \n"
                + "where year(o.created_at) = ?\n"
                + "group by o.product_id,o.product_name order by total desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, year);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product c = new product(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("total"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<order> getAllOrderByUser(int user_id) {
        List<order> list = new ArrayList<>();
        String sql = "select * from [order] where user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order c = new order(rs.getInt("order_id"), rs.getInt("total_amout"), rs.getString("payment"), rs.getString("address"), rs.getDate("created_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<orderDetail> getAllproductSellbyCt() {
        List<orderDetail> list = new ArrayList<>();
        String sql = "select sum(o.quantity) as total,o.category_id from order_detail o\n"
                + "group by o.category_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoryDAO d = new categoryDAO();
                orderDetail c = new orderDetail(rs.getInt("total"), d.getCategoryByID(rs.getInt("category_id")));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public order getOrder() {

        String sql = "select top 1 order_id,total_amout,username from [order]\n"
                + "order by order_id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order c = new order(rs.getInt("order_id"), rs.getString("username"), rs.getInt("total_amout"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public order getOrderById(int id) {

        String sql = "select order_id,total_amout,username from [order]\n"
                + "where order_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order c = new order(rs.getInt("order_id"), rs.getString("username"), rs.getInt("total_amout"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public order getOrderById2(int id) {

        String sql = "select order_id,total_amout,username,payment,address,created_at,phone from [order]\n"
                + "where order_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                order c = new order(rs.getInt("order_id"), rs.getString("username"), rs.getInt("phone"), rs.getInt("total_amout"),
                        rs.getString("payment"), rs.getString("address"), rs.getDate("created_at"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<orderDetail> getOrderDetailById(int id) {
        List<orderDetail> list = new ArrayList<>();
        String sql = "SELECT [detail_id]\n"
                + "      ,[order_id]\n"
                + "      ,[product_id]\n"
                + "      ,[product_name]\n"
                + "      ,[product_img]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[price_sale]\n"
                + "      ,[category_id]\n"
                + "      ,[created_at]\n"
                + "      ,[update_at]\n"
                + "  FROM [dbo].[order_detail] where order_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                orderDetail c = new orderDetail(rs.getInt("product_id"), rs.getString("product_name"), rs.getInt("quantity"), rs.getInt("price_sale")
                );
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void UpdateOrder(int id, String mess) {
        String sql = "UPDATE [dbo].[order]\n"
                + "   SET [payment] = ?\n"
                + " WHERE order_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, mess);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getSoLuongDaBan() {
        String sql = "select sum(o.quantity) from order_detail o, [order] od \n"
                + "where o.order_id = od.order_id and (od.payment = 'VNPAY' or od.payment = 'COD')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getSoLuongTonKho() {
        String sql = "select sum(p.quantity) from product p";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getTongDoanhThu() {
        String sql = "select sum(od.total_amout) from order_detail o, [order] od \n"
                + "where o.order_id = od.order_id and (od.payment = 'VNPAY' or od.payment = 'COD')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getTongHoaDon() {
        String sql = "select count(o.order_id) from [order] o \n"
                + "where o.payment = 'COD' or o.payment = 'VNPAY'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int total = rs.getInt(1);
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
}
