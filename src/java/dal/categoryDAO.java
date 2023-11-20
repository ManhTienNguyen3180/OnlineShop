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

/**
 *
 * @author Nguyen Manh Tien
 */
public class categoryDAO extends DBContext {

    public List<category> getAllCategory() {
        List<category> list = new ArrayList<>();
        String sql = "select * from category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                category c = new category(rs.getInt("c_id"), rs.getString("c_name"), rs.getInt("c_parentid"),
                        rs.getDate("created_at"), rs.getDate("update_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        categoryDAO d = new categoryDAO();
        List<category> list = d.getAllCategory();
        for (category o : list) {
            System.out.println(o.getCname());
        }
    }

    //tim 1 category khi co id
    public category getCategoryByID(int id) {
        String sql = "select * from category where c_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                category c = new category(rs.getInt("c_id"), rs.getString("c_name"), rs.getInt("c_parentid"),
                        rs.getDate("created_at"), rs.getDate("update_at"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(String name) {

        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        String sql = "INSERT INTO [dbo].[category]\n"
                + "           ([c_name]\n"
                + "           ,[created_at])\n"
                + "     VALUES\n"
                + "           (?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setDate(2, date);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[product] \n"
                + "      WHERE category_id = ?\n"
                + "DELETE FROM [dbo].[category] \n"
                + "      WHERE c_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
