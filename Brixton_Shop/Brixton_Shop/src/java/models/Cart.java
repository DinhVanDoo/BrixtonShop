/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dinhd513
 */
public class Cart {
    private List<Item> listItems;

    public Cart() {
        listItems = new ArrayList<>();    
    }

    public Cart(List<Item> listItems) {
        this.listItems = listItems;
    }

    public List<Item> getListItems() {
        return listItems;
    }

    public void setListItems(List<Item> listItems) {
        this.listItems = listItems;
    }
    
    private Item getItemById(int id){
        for (Item item : listItems) {
            if (item.getProduct().getProId()==id) {
                return item;               
            }           
        }
        return null;
    }
    
    public int getQuantityById(int id){           //1 proid  //item( proid 1, qtt, price )
        return getItemById(id).getQuantity();
        
    }
    
    // them vao gio
    
    public void addItem(Item item){
        
        if (getItemById(item.getProduct().getProId())!= null) {
            //co roi thi cong so luong
            Item i = getItemById(item.getProduct().getProId());
            i.setQuantity(i.getQuantity()+item.getQuantity());
        }else{
            //chua co thi them vao
            listItems.add(item);
        }
        
    }
    
    public void removeItem(int id){
        if (getItemById(id)!= null) {
            listItems.remove(getItemById(id));
        }  
    }
    
    public float getTotalMoney(){
        float total = 0;
        for (Item item : listItems) {
            total += (item.getQuantity() * item.getProduct().getProPrice());  
        }
        return total;
    }
    
    
    
    
}
