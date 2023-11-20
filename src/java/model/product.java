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
public class product {
    private int product_id;
    private String product_name;
    private String product_author;
    private String product_nxb;
    private String product_kichthuoc;
    private String product_loaibia;
    private int product_sotrang;
    private String product_img;
    private int price;
    private int priceSale;
    private String product_description;
    private int quantity;
    private int product_ishot;
    private int pro_review_total;
    private Date created_at;
    private Date update_at;
    private category ct;
    
    public product() {
    }

    public product(int product_id, String product_name, String product_author, String product_nxb, String product_kichthuoc, String product_loaibia, int product_sotrang, String product_img, int price, int priceSale, String product_description, int quantity, int product_ishot, int pro_review_total, Date created_at, Date update_at, category ct) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_author = product_author;
        this.product_nxb = product_nxb;
        this.product_kichthuoc = product_kichthuoc;
        this.product_loaibia = product_loaibia;
        this.product_sotrang = product_sotrang;
        this.product_img = product_img;
        this.price = price;
        this.priceSale = priceSale;
        this.product_description = product_description;
        this.quantity = quantity;
        this.product_ishot = product_ishot;
        this.pro_review_total = pro_review_total;
        this.created_at = created_at;
        this.update_at = update_at;
        this.ct = ct;
    }

    public product(int product_id, String product_name, String product_author, String product_nxb, String product_kichthuoc, String product_loaibia, int product_sotrang, String product_img, int price, int priceSale, String product_description, int quantity, int product_ishot, int pro_review_total, Date created_at, Date update_at) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_author = product_author;
        this.product_nxb = product_nxb;
        this.product_kichthuoc = product_kichthuoc;
        this.product_loaibia = product_loaibia;
        this.product_sotrang = product_sotrang;
        this.product_img = product_img;
        this.price = price;
        this.priceSale = priceSale;
        this.product_description = product_description;
        this.quantity = quantity;
        this.product_ishot = product_ishot;
        this.pro_review_total = pro_review_total;
        this.created_at = created_at;
        this.update_at = update_at;
    }

    public product(int product_id, String product_name, String product_author, String product_nxb, String product_kichthuoc, String product_loaibia, int product_sotrang, String product_img, int price, int priceSale, String product_description, int quantity, int product_ishot, category ct) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_author = product_author;
        this.product_nxb = product_nxb;
        this.product_kichthuoc = product_kichthuoc;
        this.product_loaibia = product_loaibia;
        this.product_sotrang = product_sotrang;
        this.product_img = product_img;
        this.price = price;
        this.priceSale = priceSale;
        this.product_description = product_description;
        this.quantity = quantity;
        this.product_ishot = product_ishot;
        this.ct = ct;
    }

    public product(int product_id, String product_name, int quantity) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.quantity = quantity;
    }

    public product(int price, int quantity) {
        this.price = price;
        this.quantity = quantity;
    }

    
    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_author() {
        return product_author;
    }

    public void setProduct_author(String product_author) {
        this.product_author = product_author;
    }

    public String getProduct_nxb() {
        return product_nxb;
    }

    public void setProduct_nxb(String product_nxb) {
        this.product_nxb = product_nxb;
    }

    public String getProduct_kichthuoc() {
        return product_kichthuoc;
    }

    public void setProduct_kichthuoc(String product_kichthuoc) {
        this.product_kichthuoc = product_kichthuoc;
    }

    public String getProduct_loaibia() {
        return product_loaibia;
    }

    public void setProduct_loaibia(String product_loaibia) {
        this.product_loaibia = product_loaibia;
    }

    public int getProduct_sotrang() {
        return product_sotrang;
    }

    public void setProduct_sotrang(int product_sotrang) {
        this.product_sotrang = product_sotrang;
    }

    public String getProduct_img() {
        return product_img;
    }

    public void setProduct_img(String product_img) {
        this.product_img = product_img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(int priceSale) {
        this.priceSale = priceSale;
    }

    public String getProduct_description() {
        return product_description;
    }

    public void setProduct_description(String product_description) {
        this.product_description = product_description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProduct_ishot() {
        return product_ishot;
    }

    public void setProduct_ishot(int product_ishot) {
        this.product_ishot = product_ishot;
    }

    public int getPro_review_total() {
        return pro_review_total;
    }

    public void setPro_review_total(int pro_review_total) {
        this.pro_review_total = pro_review_total;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }

    public category getCt() {
        return ct;
    }

    public void setCt(category ct) {
        this.ct = ct;
    }
    
}
