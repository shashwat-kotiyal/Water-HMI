<%
    try {
        String user = (String) session.getAttribute("Username");
        if (user != null) {
            response.sendRedirect("welcome.jsp");
        }
    } catch (NullPointerException e) {
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="style/style.css">
       
    </head>
    <body background="images/water.jpg">
        <div class="centered">
            <form action="LoginHandler" method="post"> 

                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Login</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> UserName</td>
                            <td> <input type="text" name="uname"/> </td>
                        </tr>

                        <tr>
                            <td> Password</td>
                            <td> <input type="password" name="pass"/></td>
                        </tr>

                        <tr>
                            <td> <input type="submit" value="Submit"/></td>
                            <td>
                                <%
                                    try {
                                        String st = request.getParameter("st");
                                        String msg = "Invalid Username or Password";
                                        String msg2 = "Your session has expired";
                                    if (st.equals("1")) {%>
                                <%=msg%>

                                <%}
                                    if (st.equals("2")) {
                                %>
                                <%=msg2%>   
                                <%
                                        }
                                    } catch (NullPointerException e) {
                                    }
                                %>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>

