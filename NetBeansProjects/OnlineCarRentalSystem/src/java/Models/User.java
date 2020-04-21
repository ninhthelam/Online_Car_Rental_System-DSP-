/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;



public class User {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet();    
    private String fullname;
    private String password;
    private String email;
    private String dor;
    private String phone;
    
    

    public User(int id,String fullname, String email,String password, String phone, String dor) {
        this.id = id;
        this.fullname = fullname;      
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.dor = dor;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User() {
    }

    public User( String fullname, String email, String password, String phone, String dor){
        this.fullname = fullname;      
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.dor = dor;
        
        
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDor() {
        return dor;
    }

    public void setDor(String dor) {
        this.dor = dor;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    
}
