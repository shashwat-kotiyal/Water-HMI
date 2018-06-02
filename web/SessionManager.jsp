<%
    try{
        String username=(String)session.getAttribute("Username");
        if(username==null)
            response.sendRedirect("login.jsp?st=2");
        
    }catch(NullPointerException e){}
%>