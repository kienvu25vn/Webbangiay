/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
import java.util.*;

public class Cart {

    private Product product;
    private int quantity;
    private String size;

    public Cart() {
    }

    public Cart(Product product, String size, int quantity) {
        this.product = product;
        this.size = size;
        this.quantity = quantity;

    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSize() {
        return size.toUpperCase();
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getAmount() {
        return this.quantity * this.product.getPrice();
    }

}
