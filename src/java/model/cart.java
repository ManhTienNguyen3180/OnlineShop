/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nguyen Manh Tien
 */
public final class cart {

    private List<Item> items;

    public cart() {
        items=new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }
    public int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    private Item getItemById(int id){
        for(Item i:items){
            if(i.getProduct().getProduct_id()==id){
                return i;
            }
        }
        return null;
    }
    public void addItem(Item t){
        if(getItemById(t.getProduct().getProduct_id())!=null){
            Item m=getItemById(t.getProduct().getProduct_id());
            m.setQuantity(m.getQuantity()+t.getQuantity());
        }else
            items.add(t);
    }
    public void removeItem(int id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
    public int getTotalMoney(){
        int t=0;
        for(Item i:items)
            t+=(i.getQuantity()*i.getPrice());
        return t;
    }
    private product getProductById(int id,List<product> list){
        for(product i:list){
            if(i.getProduct_id()==id)
                return i;
        }
        return null;
    }
    public cart(String txt,List<product> list){
        items=new ArrayList<>();
        try{
        if(txt!=null && txt.length()!=0){
            String[] s=txt.split("/");//thay / cho dau ,
            for(String i:s){
                String[] n=i.split(":");
                int id=Integer.parseInt(n[0]);
                int quantity=Integer.parseInt(n[1]);
                product p=getProductById(id, list);
                Item t=new Item(p, quantity, p.getPriceSale());
                addItem(t);
            }
        }
        }catch(NumberFormatException e){
            
        }
    }
}
