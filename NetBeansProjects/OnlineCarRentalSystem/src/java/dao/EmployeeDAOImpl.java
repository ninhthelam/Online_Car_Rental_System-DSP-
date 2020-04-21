/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DatabaseConnection.DBConnect;
import Models.CFeedback;
import Models.Driver;
import Models.Employees;
import Models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ninhthelam
 */
public class EmployeeDAOImpl implements EmployeeDAO {
    Connection cons = DBConnect.getConnection();
    Statement statement = null;
    ResultSet resultSet = null;
    ResultSetMetaData resultSetMetaData = null;

    @Override
    public void insertAccount(Employees employees) {
        String sql = "INSERT into EMPLOYEES (id,name,password,phone,ni,status) values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, employees.getId());
            ps.setString(2, employees.getName());
            ps.setString(3, employees.getPassword());
            ps.setInt(4, employees.getPhone());
            ps.setInt(5, employees.getNi());
            ps.setString(6, employees.getTitle());
            

            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                cons.close();
            } catch (SQLException ex) {
                //Logger.getLogger(BrandDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public boolean checkAccountExist(int ni) {
        PreparedStatement ps = null;
        String sql = "select ni from EMPLOYEES where ni=" + ni + "";
        try {
            ps = cons.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("ERROR CHECKING NI");
        } finally {
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    @Override
    public boolean checkLogin(int id, String password) {
        PreparedStatement ps = null;
        String sql = "select id, password from EMPLOYEES where id=" + id + " and password='"+password+"'";
        try {
            ps = cons.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("ERROR CHECKING NI");
        } finally {
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    @Override
    public String getTitleID(int id) {
        PreparedStatement ps = null;
        String sql = "select status from EMPLOYEES where id=" + id + "";
        String status ="";
      
        try {
            ps = cons.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                status= rs.getString("status");
            }

        } catch (Exception e) {
            System.err.println("ERROR GET status");
        } finally {
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return status;
    
    }

    @Override
    public void updateAccount(Employees employees) {
        String sql = "UPDATE EMPLOYEES SET id=?, name=?, password=?, phone=?, ni=?, status=? WHERE id=" + employees.getId() + "";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, employees.getId());            
            ps.setString(2,employees.getName());
            ps.setString(3, employees.getPassword());
            ps.setInt(4, employees.getPhone());
           
            ps.setInt(5, employees.getNi());
           
            ps.setString(6, employees.getTitle());
            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                cons.close();
            } catch (SQLException ex) {
            }
        }
    
    }

    @Override
    public void insertDriver(Driver driver) {
        String sql = "INSERT into DRIVER (id,fullname,ni,license,phone,dor,status,password) values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, driver.getId());
            ps.setString(2, driver.getFullname());
            ps.setInt(3,driver.getNi());
            ps.setString(4, driver.getLicenseNo());
            ps.setInt(5, driver.getPhone());
            ps.setString(6, driver.getDor());
            ps.setString(7, driver.getStatus());
            ps.setString(8, driver.getPassword());
            

            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                cons.close();
            } catch (SQLException ex) {
                //Logger.getLogger(BrandDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public void replyFeedback(CFeedback cfeedback) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employees getEmployeeDetailByID(int id) {
        PreparedStatement ps = null;
        Employees employees = new Employees();
        try {

            String sql = "SELECT * FROM EMPLOYEES WHERE id=" + id + "";
            ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                employees.setId(rs.getInt("id"));
                
            }

        } catch (SQLException ex) {

            System.err.println("NO USER DETAIL FOUND");
        } finally {
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return employees;
    
    }

    @Override
    public CFeedback getFeedbackDetailByID(int id) {
        PreparedStatement ps = null;
        CFeedback cfeedback = new CFeedback();
        try {

            String sql = "SELECT * FROM FEEDBACK WHERE id=" + id + "";
            ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                cfeedback.setId(rs.getInt("id"));
                cfeedback.setCustomer_id(rs.getInt("customer_id"));
                cfeedback.setContent(rs.getString("content"));
                cfeedback.setDof(rs.getString("dof"));
                cfeedback.setStatus(rs.getString("status"));
                cfeedback.setRep_content(rs.getString("rep_content"));
                
               
                
            }

        } catch (SQLException ex) {

            System.err.println("NO USER DETAIL FOUND");
        } finally {
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return cfeedback;
    }

    
    
        
    
    
}
