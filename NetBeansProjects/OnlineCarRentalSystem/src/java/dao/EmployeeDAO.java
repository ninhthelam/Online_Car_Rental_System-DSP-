/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Models.CFeedback;
import Models.Driver;
import Models.Employees;

/**
 *
 * @author ninhthelam
 */
public interface EmployeeDAO {
    public void insertAccount(Employees employees);
    public boolean checkAccountExist(int ni);
    public boolean checkLogin(int id, String password);
    public String getTitleID(int id);
    public void updateAccount(Employees employees);
    public void insertDriver( Driver driver);
    public void replyFeedback (CFeedback cfeedback);
    public Employees getEmployeeDetailByID(int id);
    public CFeedback getFeedbackDetailByID(int id);
    
    
}
