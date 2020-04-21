/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DatabaseConnection.DBConnect;
import Models.Car;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletOutputStream;

/**
 *
 * @author ninhthelam
 */
public class CarDAOImpl implements CarDAO {
    Connection cons = DBConnect.getConnection();
    Statement statement = null;
    ResultSet resultSet = null;
    ResultSetMetaData resultSetMetaData = null;

    @Override
    public void insertCar(Car car) {
        
        String sql = "INSERT into CAR_DETAILS (id,image,brand,color,price,modelname,numberofpass,description,carnum) values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, car.getId());
            ps.setBlob(2,car.getFileimage());
            ps.setString(3,car.getBrand());
            ps.setString(4, car.getColor());
            ps.setInt(5,car.getPrice());
            ps.setString(6, car.getModelname());
            ps.setInt(7, car.getNumberofpass());
            ps.setString(8, car.getDescription());
            ps.setString(9, car.getCarnumber());

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
    public void updateAccount(Car car) {
        String sql = "UPDATE CAR_DETAILS SET id=?, image=?, brand=?, color=?, price=?, modelname=?, numberofpass=?, description=? WHERE id=" + car.getId() + "";
        try {
            PreparedStatement ps = cons.prepareCall(sql);
            ps.setInt(1, car.getId());
            ps.setBlob(2,car.getFileimage());
            ps.setString(3,car.getBrand());
            ps.setString(4, car.getColor());
            ps.setInt(5,car.getPrice());
            ps.setString(6, car.getModelname());
            ps.setInt(7, car.getNumberofpass());
            ps.setString(8, car.getDescription());
            ps.setString(9, car.getCarnumber());
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
