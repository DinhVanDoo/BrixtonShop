/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.Date;

/**
 *
 * @author dinhd513
 */
public class OrderToManage {
    private int orId;
    private Date ordate;
    private int proId;
    private String proName;
    private int quantity;
    private float proPrice;
    private String name;
    private String address;
    private String phone;
    private float totalMoney;

    public OrderToManage() {
    }

    public OrderToManage(int orId, Date ordate, int proId, String proName, int quantity, float proPrice, String name, String address, String phone, float totalMoney) {
        this.orId = orId;
        this.ordate = ordate;
        this.proId = proId;
        this.proName = proName;
        this.quantity = quantity;
        this.proPrice = proPrice;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.totalMoney = totalMoney;
    }

    public int getOrId() {
        return orId;
    }

    public void setOrId(int orId) {
        this.orId = orId;
    }

    public Date getOrdate() {
        return ordate;
    }

    public void setOrdate(Date ordate) {
        this.ordate = ordate;
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getProPrice() {
        return proPrice;
    }

    public void setProPrice(float proPrice) {
        this.proPrice = proPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(float totalMoney) {
        this.totalMoney = totalMoney;
    }
    
    
}
