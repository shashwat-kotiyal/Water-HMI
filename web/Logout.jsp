<%-- 
    Document   : Logout
    Created on : 24-Nov-2014, 17:06:09
    Author     : Vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <style>
            body {
                margin: 0;
                padding: 0;
            }
            .centered {
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

        </style>
    </head>
    <body>
        <div class="centered">
            <h3>You have successfully logged out</h3>
            Login again <a href="login.jsp"> click here</a>
            <%
                response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
                response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
                response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
                response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
                String userName = (String) session.getAttribute("User");
                if (null == userName) {
                    request.setAttribute("Error", "Session has ended.Please login.");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
                session.removeAttribute("User");
                session.invalidate();
            %>
        </div>
    </body>
</html>
