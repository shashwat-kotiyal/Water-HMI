/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.Operation.TeleOperation;
import com.action.TeleIndicationAction;
import com.action.TeleMeasurandAction;
import com.bean.TelBeans;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHASHWAT
 */
//@WebServlet(name = "TeleMeasurandHandler", urlPatterns = {"/TeleMeasurandHandler"})
public class TeleMeasurandHandler extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       TelBeans tm = new TelBeans();
       tm.setTagId(request.getParameter("tag_id"));
       tm.setTagName(request.getParameter("tag_name"));
       tm.setTagParameter(request.getParameter("type1"));
       tm.setTagType(request.getParameter("tag_type"));
       tm.setReserviourId(request.getParameter("reserviour_id"));
       tm.setLocation(request.getParameter("location"));
       tm.setHighLevel(request.getParameter("high_level"));
       tm.setLowLevel(request.getParameter("low_level"));
       tm.setGenrateAlarm(request.getParameter("alarm"));
       tm.setGenrateEvent(request.getParameter("event"));
       
       String btn=request.getParameter("btn");
       TeleOperation t=new TeleMeasurandAction();
       
       if(btn.equals("Save")){
            
            if(t.save(tm))
            {
                response.sendRedirect("Tele_measurand.jsp");
            }
            else
            {
                System.out.println("DATABASE ERROR");
            }
            
        }
        if(btn.equals("View")){
            System.out.println("VrrrrrrrrrrrrrrrrrrIEW");
            t.view(request.getParameter("tag_id"));
        
             }
           if(btn.equals("Update"))
        {
            System.out.println("Upppppppppp");
            
            if(t.update(tm))
            {
                System.out.println("one row updated");
                response.sendRedirect("Tele_measurand.jsp");
            }
            else
             {
                 System.out.println("error database");
             }
        }
        if(btn.equals("Delete"))
        { 
            System.out.println("Deleteeeeee");
            if(t.delete(tm.getTagId()))
            {
                System.out.println("one row deleted");
                response.sendRedirect("Tele_measurand.jsp");
            }
            else
            {
                System.out.println("database error");
            }
        }
        if(btn.equals("ClearAll"))
        {
            System.out.println("clearrrrrrrall");
            response.sendRedirect("Tele_measurand.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
