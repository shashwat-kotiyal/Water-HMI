/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.action.LoginAction;
import com.bean.Login;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SHASHWAT
 */
//@WebServlet(name = "LoginHandler", urlPatterns = {"/LoginHandler"})
public class LoginHandler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Login log=new Login();
        log.setUsername(request.getParameter("uname"));
        log.setPassword(request.getParameter("pass"));
        LoginAction la=new LoginAction();
        if(la.validate(log)){
            HttpSession session=request.getSession();
            session.setAttribute("Username", log.getUsername());
            response.sendRedirect("welcome.jsp");
        }else{
            response.sendRedirect("login.jsp?st=1");
        }
    }
}
