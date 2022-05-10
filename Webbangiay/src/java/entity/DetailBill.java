/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class DetailBill {
    private int idDeatailBill , idP , idBill ,quantity , price;
    private String size ;
    public DetailBill() {
    }

    public DetailBill(int idDeatailBill, int idP, int idBill, int quantity, int price , String size) {
        this.idDeatailBill = idDeatailBill;
        this.idP = idP;
        this.idBill = idBill;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
    }

    public DetailBill(int idP, int idBill, int quantity, int price , String size) {
        this.idP = idP;
        this.idBill = idBill;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public int getIdDeatailBill() {
        return idDeatailBill;
    }

    public void setIdDeatailBill(int idDeatailBill) {
        this.idDeatailBill = idDeatailBill;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public int getIdBill() {
        return idBill;
    }

    public void setIdBill(int idBill) {
        this.idBill = idBill;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
}
