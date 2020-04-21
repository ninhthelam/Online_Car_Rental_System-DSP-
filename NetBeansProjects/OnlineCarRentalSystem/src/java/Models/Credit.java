/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.concurrent.atomic.AtomicInteger;

/**
 *
 * @author ninhthelam
 */
public class Credit {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet();  
    String email;
    int carnumber;
    String expireday;
    int totalpay;
    public Credit(int id, String email, int carnumber, String expireday, int totalpay){
        this.id = id;
        this.email = email;
        this.carnumber = carnumber;
        this.expireday = expireday;
        this.totalpay = totalpay;
        
    }
    public Credit( String email, int carnumber, String expireday, int totalpay){
        
        this.email = email;
        this.carnumber = carnumber;
        this.expireday = expireday;
        this.totalpay = totalpay;
        
    }
    public Credit(){
        
    }

    public int getTotalpay() {
        return totalpay;
    }

    public void setTotalpay(int totalpay) {
        this.totalpay = totalpay;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(int carnumber) {
        this.carnumber = carnumber;
    }

    public String getExpireday() {
        return expireday;
    }

    public void setExpireday(String expireday) {
        this.expireday = expireday;
    }
    
    
}
