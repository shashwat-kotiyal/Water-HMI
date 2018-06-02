/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.Operation.TeleOperation;
import com.action.TeleIndicationAction;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHASHWAT
 */

public class ViewTeleInd extends HttpServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       System.out.println("INSIDE DOGET");
        TeleOperation tco=new TeleIndicationAction();
        String xml=tco.view(request.getParameter("tag_id"));
        if(xml!=null){
            PrintWriter out=response.getWriter();
            out.println(xml);
        }
    }
}