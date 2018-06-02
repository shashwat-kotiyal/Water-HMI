/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author SHASHWAT
 */
public class MyConnection {
    
   private static final String  url="jdbc:mysql://localhost:3306/PROJECT";
   private static final String usr="root";
   private static final String  pass="dass5";
   public static Connection getMyConnection() throws ClassNotFoundException, SQLException
   {
    Class.forName("com.mysql.jdbc.Driver");
    return DriverManager.getConnection(url,usr,pass);
   }        
    
}
