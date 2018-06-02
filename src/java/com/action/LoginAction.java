/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.bean.Login;
import com.connection.MyConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SHASHWAT
 */
public class LoginAction implements com.Operation.LoginOperation{

    @Override
    public boolean validate(Login log) {
        try {
            Connection conn=MyConnection.getMyConnection();
            String query="select count(*) from users where name='"+log.getUsername()+"' and password='"+log.getPassword()+"'";
            Statement st=conn.createStatement();
            ResultSet rs= st.executeQuery(query);
            rs.next();
            int status=rs.getInt(1);
            
            rs.close();
            conn.close();
          
            if(status == 1){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginAction.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(LoginAction.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
}
