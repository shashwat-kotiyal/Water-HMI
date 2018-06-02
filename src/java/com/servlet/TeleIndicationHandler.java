/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.Operation.TeleOperation;
import com.action.TeleIndicationAction;
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
//@WebServlet(name = "TeleIndcatioHandler", urlPatterns = {"/TeleIndcatioHandler"})
public class TeleIndicationHandler extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        TelBeans ti = new TelBeans();
       ti.setTagId(request.getParameter("tag_id"));
       ti.setTagName(request.getParameter("tag_name"));
       ti.setTagDescription(request.getParameter("tag_des"));
       ti.setTagType(request.getParameter("tag_type"));
       ti.setReserviourId(request.getParameter("reserviour_id"));
       ti.setLocation(request.getParameter("location"));
       ti.setGenrateAlarm(request.getParameter("alarm"));
       ti.setGenrateEvent(request.getParameter("event"));
       
       String btn=request.getParameter("btn");
       TeleOperation tco=new TeleIndicationAction();
       
       if(btn.equals("Save")){
            
            if(tco.save(ti))
            {
                response.sendRedirect("Tele_indication.jsp");
            }
            else
            {
                System.out.println("DATABASE ERROR");
            }
            
        }
        
           if(btn.equals("Update"))
        {
            System.out.println("Upppppppppp");
            
            if(tco.update(ti))
            {
                System.out.println("one row updated");
                response.sendRedirect("Tele_indication.jsp");
            }
            else
             {
                 System.out.println("error database");
             }
        }
        if(btn.equals("Delete"))
        { 
            System.out.println("Deleteeeeee");
            if(tco.delete(ti.getTagId()))
            {
                System.out.println("one row deleted");
                response.sendRedirect("Tele_indication.jsp");
            }
            else
            {
                System.out.println("database error");
            }
        }
        if(btn.equals("ClearAll"))
        {
            System.out.println("clearrrrrrrall");
            if(tco.deleteAll())
            {System.out.println("table teleindication deleted");
            response.sendRedirect("Tele_indication.jsp");
            }
            else
            {
                System.out.println("database error");
            }  
            
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
