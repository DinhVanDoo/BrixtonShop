/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author dinhd513
 */
public class Product {
      private int proId;
      private String proName;
      private String proImg;
      private float proPrice;
      private String proDetail;
      private int caId;
      private int coId;
     

    public Product() {
    }

    public Product(int proId, String proName, String proImg, float proPrice, String proDetail, int caId, int coId) {
        this.proId = proId;
        this.proName = proName;
        this.proImg = proImg;
        this.proPrice = proPrice;
        this.proDetail = proDetail;
        this.caId = caId;
        this.coId = coId;
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

    public String getProImg() {
        return proImg;
    }

    public void setProImg(String proImg) {
        this.proImg = proImg;
    }

    public float getProPrice() {
        return proPrice;
    }

    public void setProPrice(float proPrice) {
        this.proPrice = proPrice;
    }

    public String getProDetail() {
        return proDetail;
    }

    public void setProDetail(String proDetail) {
        this.proDetail = proDetail;
    }

    public int getCaId() {
        return caId;
    }

    public void setCaId(int caId) {
        this.caId = caId;
    }

    public int getCoId() {
        return coId;
    }

    public void setCoId(int coId) {
        this.coId = coId;
    }
    
    
    

      
    
      
      
}
