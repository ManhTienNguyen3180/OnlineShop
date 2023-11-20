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
import model.post;

/**
 *
 * @author Nguyen Manh Tien
 */
public class postDAO extends DBContext {

    public List<post> getAllPost() {
        List<post> list = new ArrayList<>();
        String sql = "select * from post";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                post c = new post(rs.getInt("post_id"), rs.getString("post_name"), rs.getString("post_img"),
                        rs.getString("post_author"), rs.getString("post_stext"),
                        rs.getString("post_text"), rs.getDate("post_date"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public post getPostById(int id) {
        String sql = "select * from post where post_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                post c = new post(rs.getInt("post_id"), rs.getString("post_name"), rs.getString("post_img"),
                        rs.getString("post_author"), rs.getString("post_stext"),
                        rs.getString("post_text"), rs.getDate("post_date"));
                return c;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public int getPagesize() {
        String sql = "select count(*) from post p";
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

    public List<post> getPaging(int index) {
        List<post> list = new ArrayList<>();
        String sql = "select * from post p\n"
                + "order by p.post_id\n"
                + "offset ? rows fetch next 4 rows only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 3);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                post c = new post(rs.getInt("post_id"), rs.getString("post_name"), rs.getString("post_img"),
                        rs.getString("post_author"), rs.getString("post_stext"),
                        rs.getString("post_text"), rs.getDate("post_date"));
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public void insert(post c) {
        
        String sql = "INSERT INTO [dbo].[post]\n"
                + "           ([post_name]\n"
                + "           ,[post_img]\n"
                + "           ,[post_author]\n"
                + "           ,[post_stext]\n"
                + "           ,[post_text])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getPost_name());
            st.setString(2, c.getPost_img());
            st.setString(3, c.getPost_author());
            st.setString(4, c.getPost_stext());
            st.setString(5, c.getPost_text());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[post]\n"
                + "      WHERE post_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(String post_name,String post_img,String post_author,String post_stext,String post_text,int post_id) {
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        String sql = "UPDATE [dbo].[post]\n"
                + "   SET [post_name] = ?\n"
                + "      ,[post_img] = ?\n"
                + "      ,[post_author] = ?\n"
                + "      ,[post_stext] = ?\n"
                + "      ,[post_text] = ?\n"
                + "      ,[post_date] = ?\n"
                + " WHERE post_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, post_name);
            st.setString(2, post_img);
            st.setString(3, post_author);
            st.setString(4, post_stext);
            st.setString(5, post_text);
            st.setDate(6, date);
            st.setInt(7, post_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
