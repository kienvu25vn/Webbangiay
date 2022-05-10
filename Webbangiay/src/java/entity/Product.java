/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Product {

    int id ;
   
    String name, title, description, image, color;
    double price;
    int  size1 , size2 , size3 , amount;
    public Product() {
    }

    public Product(int id, String name, String title, String description, double price, String image, String color) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.description = description;
        this.image = image;
        this.color = color;
        this.price = price;
    }

    public Product(int id, String name, String title, String description,double price, String image , String color, int size1, int size2, int size3, int amount) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.description = description;
        this.image = image;
        this.color = color;
        this.price = price;
        this.size1 = size1;
        this.size2 = size2;
        this.size3 = size3;
        this.amount = amount;
    }

    

    public int getSize1() {
        return size1;
    }

    public void setSize1(int size1) {
        this.size1 = size1;
    }

    public int getSize2() {
        return size2;
    }

    public void setSize2(int size2) {
        this.size2 = size2;
    }

    public int getSize3() {
        return size3;
    }

    public void setSize3(int size3) {
        this.size3 = size3;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String toString() {
        return this.name + " " + this.title;
    }
}
