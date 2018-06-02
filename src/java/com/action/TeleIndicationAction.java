
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
public class TeleIndicationAction implements TeleOperation {

    
    
    private final String INSERT_TAG="INSERT INTO TELEINDICATION VALUES(?,?,?,?,?,?,?)";
    private final String DELETE_TAG="DELETE FROM TELEINDICATION WHERE TAGID=?";
    private final String DELETEALL_TAG="truncate table TELEINDICATION";
    private final String VIEWALL_TAG="SELECT * FROM TELEINDICATION";
    private final String VIEW_TAG="SELECT * FROM TELEINDICATION WHERE TAGID=?";
    private final String UPDATE_TAG="UPDATE TELEINDICATION SET TAGNAME=?,TAGTYPE=?,RESERVIOURID=?,LOCATION=?,ALARM=?,EVENT=? WHERE TAGID=?";
    @Override
    public boolean save(Object obj) {
        
        TelBeans t=(TelBeans)obj;
        try {
            Connection conn=MyConnection.getMyConnection();
            PreparedStatement ps= (PreparedStatement) conn.prepareStatement(INSERT_TAG);
            ps.setString(1, t.getTagId());
            ps.setString(2, t.getTagName());
            ps.setString(3, t.getTagType());
            ps.setString(4,t.getReserviourId());
            ps.setString(5, t.getLocation());
            ps.setString(6, t.getGenrateAlarm());
            ps.setString(7, t.getGenrateEvent());
            
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
            
            ps.setString(7, t.getTagId());
            ps.setString(1, t.getTagName());
            ps.setString(2, t.getTagType());
            ps.setString(3, t.getReserviourId());
            ps.setString(4, t.getLocation());
            ps.setString(5, t.getGenrateAlarm());
            ps.setString(6, t.getGenrateEvent());
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
        
        try {
            Connection conn=MyConnection.getMyConnection();
            PreparedStatement st=conn.prepareStatement(VIEW_TAG);
            st.setString(1, id);
            ResultSet rs=st.executeQuery();
             
            String xml="<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" 
                    + "<tele-indication>\n";
              
             while(rs.next())
             {
                 
             xml+="\t<tag-id>"+rs.getString("tagid")+"</tag-id>\n";
             xml+="\t<tag-name>"+rs.getString("tagname")+"</tag-name>\n";
             xml+="\t<tag-type>"+rs.getString("tagtype")+"</tag-type>\n";
             xml+="\t<reserviour-id>"+rs.getString("reserviourid")+"</reserviour-id>\n";
             xml+="\t<location> "+rs.getString("location")+"</location>\n";
             xml+="\t<alarm>"+rs.getString("alarm")+"</alarm>\n";
             xml+="\t<event>"+rs.getString("event")+"</event>\n";
             }
             xml+="</tele-indication>";
             return xml;
           
        } catch (ClassNotFoundException ex) {
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(TeleIndicationAction.class.getName()).log(Level.SEVERE, null, ex);
           return null;
        }
    }       
    

    @Override
    public Object[] veiwAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
