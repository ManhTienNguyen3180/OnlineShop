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
public class orderDetail {
    private int detail_id;
    private int order_id;
    private int product_id;
    private String product_name;
    private String product_img;
    private int quantity;
    private int price;
    private int priceSale;
    private Date created_at;
    private Date update_at;
    private category ct;
    public orderDetail() {
    }

    public orderDetail(int detail_id, int order_id, int product_id, String product_name, String product_img, int quantity, int price, int priceSale, Date created_at, Date update_at) {
        this.detail_id = detail_id;
        this.order_id = order_id;
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_img = product_img;
        this.quantity = quantity;
        this.price = price;
        this.priceSale = priceSale;
        this.created_at = created_at;
        this.update_at = update_at;
    }

    public orderDetail(int product_id, String product_name, int quantity, category ct) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.quantity = quantity;
        this.ct = ct;
    }

    public orderDetail(int product_id, String product_name, int quantity, int priceSale) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.quantity = quantity;
        this.priceSale = priceSale;
    }
    
    public orderDetail(int quantity, category ct) {
        this.quantity = quantity;
        this.ct = ct;
    }
    
    public int getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(int detail_id) {
        this.detail_id = detail_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
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

    public String getProduct_img() {
        return product_img;
    }

    public void setProduct_img(String product_img) {
        this.product_img = product_img;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
    
}
