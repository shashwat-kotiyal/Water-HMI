/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.Operation.TeleOperation;
import com.bean.TelBeans;
import com.connection.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SHASHWAT
 */
public class TeleMeasurandAction implements TeleOperation {
    
    private final String INSERT_TAG="INSERT INTO TELEMEASURAND VALUES(?,?,?,?,?,?,?,?,?,?)";
    private final String DELETE_TAG="DELETE FROM TELEMEASURAND WHERE TAGID=?";
    private final String DELETEALL_TAG="truncate table TELEMEASURAND";
    private final String VIEWALL_TAG="SELECT * FROM TELEMEASURAND";
    private final String VIEW_TAG="SELECT * FROM TELEMEASURAND WHERE TAGID=?";
    private final String UPDATE_TAG="UPDATE TELEMEASURAND SET TAGNAME=?,PARAMETER=?,LOWLEVEL=?,HIGHLEVEL=?,TAGTYPE=?,RESERVIOURID=?,LOCATION=?,ALARM=?,EVENT=? WHERE TAGID=?";
    @Override
    public boolean save(Object obj) {
        
        TelBeans tm=(TelBeans)obj;
        try {
            Connection conn=MyConnection.getMyConnection();
            PreparedStatement ps= (PreparedStatement) conn.prepareStatement(INSERT_TAG);
            ps.setString(1, tm.getTagId());
            ps.setString(2, tm.getTagName());
            ps.setString(3, tm.getTagParameter());
            ps.setString(4, tm.getLowLevel());
            ps.setString(5, tm.getHighLevel());
            ps.setString(6, tm.getTagType());
            ps.setString(7, tm.getReserviourId());
            ps.setString(8, tm.getLocation());
            ps.setString(9, tm.getGenrateAlarm());
            ps.setString(10,tm.getGenrateEvent());
            
            ps.executeUpdate();
            ps.close();
            conn.close();
         return true;
        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
       
    }

    @Override
    public boolean delete(String id) {
        try {
            Connection conn= MyConnection.getMyConnection();
            PreparedStatement ps=conn.prepareStatement(DELETE_TAG);
            ps.setString(1, id);
            ps.execute();
            ps.close();
            conn.close();
         return true;   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        } catch (SQLException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        }
    }

    @Override
    public boolean update(Object obj) {
        TelBeans t =(TelBeans)obj;
        try {
            Connection conn =MyConnection.getMyConnection();
            PreparedStatement ps=conn.prepareStatement(UPDATE_TAG);
            
            ps.setString(10,t.getTagId());
            ps.setString(1,t.getTagName());
            ps.setString(2,t.getTagParameter());
            ps.setString(3,t.getLowLevel());
            ps.setString(4,t.getHighLevel());
            ps.setString(5,t.getTagType());
            ps.setString(6,t.getReserviourId());
            ps.setString(7,t.getLocation());
            ps.setString(8,t.getGenrateAlarm());
            ps.setString(9,t.getGenrateEvent());
            ps.executeUpdate();
            ps.close();
            conn.close();
            
            return true;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        } catch (SQLException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
         return false;
        }
        
    }

    @Override
    public boolean deleteAll() {
        Connection conn;
        try {
             conn = MyConnection.getMyConnection();
             PreparedStatement ps=conn.prepareStatement(DELETEALL_TAG);
             ps.execute();
        return true;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        } catch (SQLException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        }
       
        
        
    }

    @Override
    public String view(String id) {
        Connection conn;
        try {
            conn = com.connection.MyConnection.getMyConnection();
            PreparedStatement ps=conn.prepareStatement(VIEW_TAG);
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            rs.next();
            String xml="<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n"
                    +"<tele-measurand>\n "
                    +"\t<tag-id>"+rs.getString("tagid")+"</tag-id>\n"
                    +"\t<tag-name>"+rs.getString("tagname")+"</tag-name>\n"
                    + "\t<parameter>"+rs.getString("parameter")+"</parameter>\n"
                    + "\t<low-level>"+rs.getString("lowlevel")+"</low-level>\n"
                    +"\t<high-level>"+rs.getString("highlevel")+"</high-level>\n"
                    +"\t<tag-type>"+rs.getString("tagtype")+"</tag-type>\n"
                    +"\t<reserviour-id>"+rs.getString("reserviourid")+"</reserviour-id>\n"
                    +"\t<location> "+rs.getString("location")+"</location>\n"
                    +"\t<alarm>"+rs.getString("alarm")+"</alarm>\n"
                    +"\t<event>"+rs.getString("event")+"</event>\n"
                    + "</tele-measurand>";
            
            return xml;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeleMeasurandAction.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(TeleMeasurandAction.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
        
        
    }

    @Override
    public Object[] veiwAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
    
}
