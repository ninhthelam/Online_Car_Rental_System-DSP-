/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DatabaseConnection.DBConnect;
import Models.Credit;
import Models.CFeedback;
import Models.Reservation;
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
public class UserDAOImpl implements UserDAO {
    Connection cons = DBConnect.getConnection();
    Statement statement = null;
    ResultSet resultSet = null;
    ResultSetMetaData resultSetMetaData = null;

    @Override
    public void insertAccount(User user) {
        String sql = "INSERT into MEMBERS (id,fullname,email,password,phone,dor) values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, user.getId());
            ps.setString(2, user.getFullname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getPhone());
            ps.setString(6, user.getDor());
            

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
    public boolean checkAccountExist(String email){
        PreparedStatement ps = null;
        String sql = "select email from MEMBERS where email='" + email + "'";
        try {
            ps = cons.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("ERROR CHECKING EMAIL");
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
    public boolean checkLogin(String email, String password){
        PreparedStatement ps = null;
        String sql = "select * from MEMBERS where email='" + email + "' AND password='" + password + "'";
        try {
            ps = cons.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("ERROR CHECKING EMAIL");
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
    public User getUserDetailByID(int id) {
        PreparedStatement ps = null;
        User user = new User();
        try {

            String sql = "SELECT * FROM MEMBERS WHERE id=" + id + "";
            ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                             
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
        return user;
    
    }

    @Override
    public void insertReservation(Reservation reservation) {
        String sql = "INSERT into BOOKING_LIST (id,car_id,startday,returnday,status,location,e_id,name) values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, reservation.getId());
            ps.setInt(2, reservation.getCar_id());
            ps.setString(3, reservation.getPickdate());
            ps.setString(4, reservation.getReturndate());
            ps.setString(5, reservation.getStatus());
            ps.setString(6, reservation.getLocation());
            ps.setInt(7, reservation.getE_id());
            ps.setString(8, reservation.getEmail());
            
            

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
    public void insertCredit(Credit credit) {
        String sql = "INSERT into PAYMENT (id,name,carnum,expiredate,totalpay) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, credit.getId());
            ps.setString(2, credit.getEmail());
            ps.setInt(3, credit.getCarnumber());
            ps.setString(4, credit.getExpireday());
            ps.setInt(5,credit.getTotalpay());
            
            
            

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
    public void insertFeedback(CFeedback feedback) {
        String sql = "INSERT into FEEDBACK (id,customer_id,content,dof,status) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, feedback.getId());
            ps.setInt(2, feedback.getCustomer_id());
            ps.setString(3, feedback.getContent());
            ps.setString(4, feedback.getDof());
            ps.setString(5, feedback.getStatus());
            
            

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
    public void updateAccount(User user) {
        String sql = "UPDATE MEMBERS SET id=?, fullname=?, email=?, password=?, phone=?,dor=? WHERE id=" + user.getId() + "";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1,user.getId());
            ps.setString(2,user.getFullname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getPhone());
            ps.setString(6,user.getDor());
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
    public void updateAccount(Credit credit) {
        String sql = "UPDATE PAYMENT SET id=?, name=?,carnum=?, expiredate=?,totalpay=? WHERE id= "+credit.getId()+"";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, credit.getId());
            ps.setString(2, credit.getEmail());
            ps.setInt(3,credit.getCarnumber());
            ps.setString(4, credit.getExpireday());
            ps.setInt(5, credit.getTotalpay());
            
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
    public void updateAccount(CFeedback cfeedback) {
        String sql = "UPDATE FEEDBACK SET id=?, customer_id=?,content=?, dof=?, status=?,rep_content=? WHERE id=" + cfeedback.getId() + "";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1,cfeedback.getId());
            ps.setInt(2,cfeedback.getCustomer_id());
            ps.setString(3, cfeedback.getContent());
            ps.setString(4, cfeedback.getDof());
            ps.setString(5,cfeedback.getStatus());
            ps.setString(6, cfeedback.getRep_content());
            
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

    

    
        
        

    
    
}
