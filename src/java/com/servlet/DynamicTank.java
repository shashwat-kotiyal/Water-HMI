/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.connection.MyConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHASHWAT
 */
@WebServlet(name = "DynamicTank", urlPatterns = {"/DynamicTank"})
public class DynamicTank extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con= MyConnection.getMyConnection();
            String sql = "select * from dynamic_value where reserviourid='1'";
            Statement st=con.createStatement();
            ResultSet res =st.executeQuery(sql);
            
            res.next();
        String xml="<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n"
                  +"<dynamic>\n "
                  + "\t<reserviour-id>"+ res.getString(1)+"</reserviour-id> \n"
                  +"\t<inlet-flow>"+res.getString(2)+"</inlet-flow> \n"
                  + "\t<outlet-flow>" +res.getString(3) + "</outlet-flow>\n "
                  + "\t<water-level>"+res.getString(4)+"</water-level>\n"
                  + "\t<chlorine-level>"+res.getString(5)+"</chlorine-level>\n"
                  + "</dynamic>";
        
        PrintWriter pw= response.getWriter();
         pw.println(xml);
         
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DynamicTank.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DynamicTank.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
  

}
