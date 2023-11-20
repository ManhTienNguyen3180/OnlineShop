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
import model.users;

/**
 *
 * @author Nguyen Manh Tien
 */
public class DAO extends DBContext {

    public users check(String user_name, String user_pass) {
        String sql = "SELECT [user_id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_email]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_address]\n"
                + "      ,[user_img]\n"
                + "      ,[user_pass]\n"
                + "      ,[role]\n"
                + "      ,[created_at]\n"
                + "      ,[update_at]\n"
                + "  FROM [dbo].[users]"
                + "  where user_name=? and user_pass=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user_name);
            st.setString(2, user_pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                users a = new users(rs.getInt("user_id"), rs.getString("user_name"),
                        rs.getString("user_email"), rs.getInt("user_phone"), rs.getString("user_address"), rs.getString("user_img"),
                        rs.getString("user_pass"), rs.getInt("role"), rs.getDate("created_at"), rs.getDate("update_at"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public users getUserByID(int id) {
        String sql = "select * from users where user_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                users c = new users(rs.getInt("user_id"), rs.getString("user_name"),
                        rs.getString("user_email"), rs.getInt("user_phone"), rs.getString("user_address"), rs.getString("user_img"),
                        rs.getString("user_pass"), rs.getInt("role"), rs.getDate("created_at"), rs.getDate("update_at"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<users> getAllUser() {
        String sql = "select * from users u where month(u.created_at) = month(getdate())\n"
                + "and year(u.created_at) = year(getdate())";
        List<users> list = new ArrayList();
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                users c = new users(rs.getInt("user_id"), rs.getString("user_name"),
                        rs.getString("user_email"), rs.getInt("user_phone"), rs.getString("user_address"), rs.getString("user_img"),
                        rs.getString("user_pass"), rs.getInt("role"), rs.getDate("created_at"), rs.getDate("update_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public users checkUsersExist(String user) {
        String sql = "SELECT [user_id]\n"
                + "      ,[user_name]\n"
                + "      ,[user_email]\n"
                + "      ,[user_phone]\n"
                + "      ,[user_address]\n"
                + "      ,[user_img]\n"
                + "      ,[user_pass]\n"
                + "      ,[role]\n"
                + "      ,[created_at]\n"
                + "      ,[update_at]\n"
                + "  FROM [dbo].[users]"
                + "  where user_name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                users a = new users(rs.getInt("user_id"), rs.getString("user_name"),
                        rs.getString("user_email"), rs.getInt("user_phone"), rs.getString("user_address"), rs.getString("user_img"),
                        rs.getString("user_pass"), rs.getInt("role"), rs.getDate("created_at"), rs.getDate("update_at"));
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void signup(String user,String email,int phone,String address, String pass,int role) {
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        String sql = "INSERT INTO [dbo].[users]\n"
                + "           ([user_name]\n"
                + "           ,[user_email]\n"
                + "           ,[user_phone]\n"
                + "           ,[user_address]\n"
                + "           ,[user_pass]\n"
                + "           ,[role]\n"
                + "           ,[created_at])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, email);
            st.setInt(3, phone);
            st.setString(4, address);
            st.setString(5, pass);
            st.setInt(6, role);
            st.setDate(7, date);
            st.executeUpdate();

        } catch (SQLException e) {

        }

    }

    public int changePass(String user_pass, String email) {
        String sql = "update users set user_pass = ? where user_email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user_pass);
            st.setString(2, email);
            st.executeUpdate();
            int flage = st.executeUpdate();
            return flage;
        } catch (SQLException e) {

        }
        return 0;
    }

    public void UpdateProfile(int id, String name, int pass, int sdt, String diachi, String email) {
        String sql = "UPDATE [dbo].[users]\n"
                + "   SET [user_name] = ?\n"
                + "      ,[user_email] = ?\n"
                + "      ,[user_phone] = ?\n"
                + "      ,[user_address] = ?\n"
                + "      ,[user_pass] = ?\n"
                + " WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, email);
            st.setInt(3, sdt);
            st.setString(4, diachi);
            st.setInt(5, pass);
            st.setInt(6, id);
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

}
