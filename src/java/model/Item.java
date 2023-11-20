/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Manh Tien
 */
public class Item {
    private product Product;
    private int quantity;
    private int price;

    public Item() {
    }

    public Item(product Product, int quantity, int price) {
        this.Product = Product;
        this.quantity = quantity;
        this.price = price;
    }

    public product getProduct() {
        return Product;
    }

    public void setProduct(product Product) {
        this.Product = Product;
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
    
}
