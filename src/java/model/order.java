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
public class order {
    private int order_id;
    private int user_id;
    private String user_name;
    private int phone;
    private int total_money;
    private String payment;
    private String address;
    private Date created_at;
    private Date update_at;

    public order() {
    }

    public order(int order_id, int user_id, String user_name, int phone, int total_money, String payment, String address, Date created_at, Date update_at) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.phone = phone;
        this.total_money = total_money;
        this.payment = payment;
        this.address = address;
        this.created_at = created_at;
        this.update_at = update_at;
    }

    public order(int order_id, String user_name, int total_money) {
        this.order_id = order_id;
        this.user_name = user_name;
        this.total_money = total_money;
    }

    public order(int order_id, int total_money, String payment, String address, Date created_at) {
        this.order_id = order_id;
        this.total_money = total_money;
        this.payment = payment;
        this.address = address;
        this.created_at = created_at;
    }

    public order(int order_id, String user_name, int phone, int total_money, String payment, String address, Date created_at) {
        this.order_id = order_id;
        this.user_name = user_name;
        this.phone = phone;
        this.total_money = total_money;
        this.payment = payment;
        this.address = address;
        this.created_at = created_at;
    }
    
    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getTotal_money() {
        return total_money;
    }

    public void setTotal_money(int total_money) {
        this.total_money = total_money;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
