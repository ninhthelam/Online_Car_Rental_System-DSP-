/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;
import javax.servlet.http.Part;



/**
 *
 * @author ninhthelam
 */
public class Car {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet();    
    private InputStream fileimage;
    private String brand;
    private String color;
    private int price;
    private String modelname;
    private int numberofpass;
    private String description;
    private String carnumber;
    private String base64Image;
    
    
    public Car(int id, InputStream fileimage, String brand, String color, int price,String modelname, int numberofpass, String description, String carnumber){ 
        this.id = id;
        this.fileimage = fileimage;
        this.brand = brand;
        this.color = color;
        this.price = price;
        this.modelname = modelname;
        this.numberofpass = numberofpass;
        this.description = description;
        this.carnumber = carnumber;
    }
    public Car(InputStream fileimage, String brand, String color, int price,String modelname, int numberofpass, String description, String carnumber){ 
        this.fileimage = fileimage;
        this.brand = brand;
        this.color = color;
        this.price = price;
        this.modelname = modelname;
        this.numberofpass = numberofpass;
        this.description = description;
        this.carnumber = carnumber;
    
    }
    public Car(){
        
    }

    public String getBase64Image() {
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public InputStream getFileimage() {
        return fileimage;
    }

    public void setFileimage(InputStream fileimage) {
        this.fileimage = fileimage;
    }
   

    
    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getModelname() {
        return modelname;
    }

    public void setModelname(String modelname) {
        this.modelname = modelname;
    }

    public int getNumberofpass() {
        return numberofpass;
    }

    public void setNumberofpass(int numberofpass) {
        this.numberofpass = numberofpass;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
  
   
      
    
}
