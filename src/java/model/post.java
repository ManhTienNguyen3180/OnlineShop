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
public class post {
    private int post_id;
    private String post_name;
    private String post_img;
    private String post_author;
    private String post_stext;
    private String post_text;
    private Date post_date;

    public post() {
    }

    public post(int post_id, String post_name, String post_img, String post_author, String post_stext, String post_text, Date post_date) {
        this.post_id = post_id;
        this.post_name = post_name;
        this.post_img = post_img;
        this.post_author = post_author;
        this.post_stext = post_stext;
        this.post_text = post_text;
        this.post_date = post_date;
    }

    public post(int post_id, String post_name, String post_img, String post_author, String post_stext, String post_text) {
        this.post_id = post_id;
        this.post_name = post_name;
        this.post_img = post_img;
        this.post_author = post_author;
        this.post_stext = post_stext;
        this.post_text = post_text;
    }

    public post(String post_name, String post_img, String post_author, String post_stext, String post_text) {
        this.post_name = post_name;
        this.post_img = post_img;
        this.post_author = post_author;
        this.post_stext = post_stext;
        this.post_text = post_text;
    }
    
    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public String getPost_name() {
        return post_name;
    }

    public void setPost_name(String post_name) {
        this.post_name = post_name;
    }

    public String getPost_img() {
        return post_img;
    }

    public void setPost_img(String post_img) {
        this.post_img = post_img;
    }

    public String getPost_author() {
        return post_author;
    }

    public void setPost_author(String post_author) {
        this.post_author = post_author;
    }

    public String getPost_stext() {
        return post_stext;
    }

    public void setPost_stext(String post_stext) {
        this.post_stext = post_stext;
    }

    public String getPost_text() {
        return post_text;
    }

    public void setPost_text(String post_text) {
        this.post_text = post_text;
    }

    public Date getPost_date() {
        return post_date;
    }

    public void setPost_date(Date post_date) {
        this.post_date = post_date;
    }
    
}
