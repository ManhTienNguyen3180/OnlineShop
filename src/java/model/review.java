/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Nguyen Manh Tien
 */
public class review {
    private int review_id;
    private int review_productid;
    private String review_comment;
    private Date review_date;
    private Date review_update;
    private users user;

    public review() {
    }

    public review(int review_id, int review_productid, String review_comment, Date review_date, Date review_update, users user) {
        this.review_id = review_id;
        this.review_productid = review_productid;
        this.review_comment = review_comment;
        this.review_date = review_date;
        this.review_update = review_update;
        this.user = user;
    }

    public int getReview_id() {
        return review_id;
    }

    public void setReview_id(int review_id) {
        this.review_id = review_id;
    }

    public int getReview_productid() {
        return review_productid;
    }

    public void setReview_productid(int review_productid) {
        this.review_productid = review_productid;
    }

    public String getReview_comment() {
        return review_comment;
    }

    public void setReview_comment(String review_comment) {
        this.review_comment = review_comment;
    }

    public Date getReview_date() {
        return review_date;
    }

    public void setReview_date(Date review_date) {
        this.review_date = review_date;
    }

    public Date getReview_update() {
        return review_update;
    }

    public void setReview_update(Date review_update) {
        this.review_update = review_update;
    }

    public users getUser() {
        return user;
    }

    public void setUser(users user) {
        this.user = user;
    }
    
}
