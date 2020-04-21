/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

/**
 *
 * @author ninhthelam
 */
public class Reservation {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet();  
    String email;
    int car_id;
    String pickdate;
    String returndate;
    String status;
    int e_id;
    String location;
    
    public Reservation(int id,int car_id, String pickdate, String returndate, String status, String location,String email){
        this.id = id;
        this.car_id = car_id;
        this.pickdate = pickdate;
        this.returndate = returndate;
        this.status = status;
        this.location = location;
        this.email = email;
        
    }
    public Reservation(int car_id, String pickdate, String returndate, String status, String location, String email){
       
        this.car_id = car_id;
        this.pickdate = pickdate;
        this.returndate = returndate;
        this.status = status;
        this.location = location;
        this.email = email;
        
    }
    
    public Reservation(){
        
    }

    public String getPickdate() {
        return pickdate;
    }

    public void setPickdate(String pickdate) {
        this.pickdate = pickdate;
    }

    public String getReturndate() {
        return returndate;
    }

    public void setReturndate(String returndate) {
        this.returndate = returndate;
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

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getE_id() {
        return e_id;
    }

    public void setE_id(int e_id) {
        this.e_id = e_id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
    
    
}
