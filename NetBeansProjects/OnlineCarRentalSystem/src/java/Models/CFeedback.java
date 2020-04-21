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
public class CFeedback {
    private static final AtomicInteger count = new AtomicInteger(0);
    private int id = count.incrementAndGet(); 
    private int customer_id;
    private String dof;
    private String content;
    private String status;
    private String rep_content;
    
    public CFeedback(int id, int customer_id, String dof, String content, String status, String rep_content){
        this.id = id;
        this.customer_id = customer_id;
        this.dof = dof;
        this.content = content;
        this.status = status;
        this.rep_content = rep_content;
       
        
    }
    public CFeedback( int customer_id, String dof, String content, String status, String rep_content){
       
        this.customer_id = customer_id;
        this.dof = dof;
        this.content = content;
        this.status = status;
       this.rep_content = rep_content;
        
    }
    public CFeedback(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRep_content() {
        return rep_content;
    }

    public void setRep_content(String rep_content) {
        this.rep_content = rep_content;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getDof() {
        return dof;
    }

    public void setDof(String dof) {
        this.dof = dof;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
    
    
    
    
    
    
    
}
