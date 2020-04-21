/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DatabaseConnection.DBConnect;
import java.io.File;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ninhthelam
 */
public class generate_report {
    public static void main(String[] args) {
        
        Connection cons = DBConnect.getConnection();

    try {
        PrintWriter pw = new PrintWriter(new File("/Users/ninhthelam/Documents/Payment_reprt/payment.csv"));
        StringBuilder sb = new StringBuilder();
        PreparedStatement ps = null;
        ps = cons.prepareStatement("select name,sum(totalpay) as totalpay from PAYMENT group by name"); //sql select query
        ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
        while (rs.next()) {
            sb.append(rs.getString("name"));
            sb.append(",");
            sb.append(rs.getInt("totalpay"));
          
            sb.append("\r\n");

        }
        pw.write(sb.toString());
        pw.close();
        System.out.println("finished");

        ps.close(); //close statement

        cons.close(); //close connection
        

    } catch (Exception e) {
        e.printStackTrace();
    }

    }
    
}
