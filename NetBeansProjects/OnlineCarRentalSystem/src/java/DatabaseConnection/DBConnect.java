/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect {
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");// connect the driver
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/online_car_rental_system", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
