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
public class Employees {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet(); 
    private String name;
    private String password;
    private int phone;
    private int ni;
    private String title;
    public Employees (int id, String name, String password, int phone, int ni, String title){
        this.id = id;
        this.name = name;
        this.ni = ni;
        this.password = password;
        this.phone = phone;
        this.title = title;
        
    }
    public Employees (String name, String password, int phone, int ni, String title){
        this.name = name;
        this.ni = ni;
        this.password = password;
        this.phone = phone;
        this.title = title;
        
    }
    public Employees(){
        
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getNi() {
        return ni;
    }

    public void setNi(int ni) {
        this.ni = ni;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    
    
    
}
