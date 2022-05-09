/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBContext {
   private static String DB_URL = "jdbc:mysql://localhost:3306/webgiay";
    private static String USER_NAME = "root";
    private static String PASSWORD = "Benzen123";
 
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            return conn;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return conn;
    }
    
   
}