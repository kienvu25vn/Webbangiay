/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Bill {
    private int idBill , idUser , total ;
    private String email , adrress , customerName , phone ,payment;
    
    public Bill() {
    }

    public Bill(int idBill, int idUser, int total, String email, String adrress) {
        this.idBill = idBill;
        this.idUser = idUser;
        this.total = total;
        this.email = email;
        this.adrress = adrress;
    }

    public Bill(int idUser, int total, String email, String adrress) {
        this.idUser = idUser;
        this.total = total;
        this.email = email;
        this.adrress = adrress;
    }

    public int getIdBill() {
        return idBill;
    }

    public void setIdBill(int idBill) {
        this.idBill = idBill;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdrress() {
        return adrress;
    }

    public void setAdrress(String adrress) {
        this.adrress = adrress;
    }


}
