/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author kyrov
 */
public class Cart {

    private Map<String, Fruit> cart;

    public Cart() {
     
    }

    public Cart(Map<String, Fruit> cart) {
        this.cart = cart;
    }

    public Map<String, Fruit> getCart() {
        return cart;
    }

    public void setCart(Map<String, Fruit> cart) {
        this.cart = cart;
    }

    public boolean add(Fruit fruit) {
        boolean check=false;
        try {
            if(this.cart==null){
                this.cart=new HashMap<>();
            }
            if(this.cart.containsKey(fruit.getId())){
                int currQuantity= this.cart.get(fruit.getId()).getQuantity();
                fruit.setQuantity(currQuantity+fruit.getQuantity());
            }
            this.cart.put(fruit.getId(), fruit);
            check=true;
        } catch (Exception e) {
        }
        return check;
 
    }

}
