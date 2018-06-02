
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="welcome.jsp"/>

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
%>




<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title></title>
    <link rel="stylesheet" href="style/page1.css" type="text/css"></link>
</head>
<body>

<main>
    <h2>log</h2>
    <div id="eventlog" >
        <table>
            <tr><td>tagid :</td> <td><input type="text" /></td>
                <td>date :</td><td><input type ="date"/></td>
                <td><input type="button" value="submit"/></td>

            </tr>
        </table>

        <table>
            <tr><td>id     </td><td>   timestamp</td><td>message</td> </tr>
        </table>
    </div>
</main>

</body>
