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
public class Driver {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet(); 
    private String fullname;
    private String licenseNo;
    private int ni;
    private int phone;
    private String dor;
    private String status;
    private String password;
    
    public Driver(int id, String fullname, int ni, String licenseNo, int phone, String dor, String status,String password){
        this.id = id;
        this.fullname = fullname;
        this.licenseNo = licenseNo;
        this.ni = ni;
        this.phone = phone;
        this.dor = dor;
        this.status = status;
        this.password = password;
        
        
        
    }
    public Driver( String fullname, int ni, String licenseNo, int phone, String dor, String status,String password){

        this.fullname = fullname;
        this.licenseNo = licenseNo;
        this.ni = ni;
        this.phone = phone;
        this.dor = dor;
        this.status = status;
        this.password = password;
        
        
    }
    public Driver(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo;
    }

    public int getNi() {
        return ni;
    }

    public void setNi(int ni) {
        this.ni = ni;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getDor() {
        return dor;
    }

    public void setDor(String dor) {
        this.dor = dor;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

}