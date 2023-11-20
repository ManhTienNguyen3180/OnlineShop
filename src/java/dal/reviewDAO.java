/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.review;
import model.users;

/**
 *
 * @author Nguyen Manh Tien
 */
public class reviewDAO  extends DBContext{
    public List<review> getAllReview(int id) {
        List<review> list = new ArrayList<>();
        String sql = "select * from review r where r.r_product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                DAO dao = new DAO();
                users user = dao.getUserByID(rs.getInt("r_user_id"));
                review c = new review(rs.getInt("id"),rs.getInt("r_product_id"),
                                        rs.getString("r_comment"),rs.getDate("created_at"),
                                        rs.getDate("update_at"),user);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void InsertComment(int product_id, int user_id,String comment,String name){
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        String sql = "insert into review(r_user_id,r_product_id,r_comment,r_username,created_at) values(?,?,?,?,?)";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            st.setInt(2, product_id);
            st.setString(3, comment);
            st.setString(4, name);
            st.setDate(5, date);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
    }
}
