<%-- 
    Document   : welcome
    Created on : Sep 13, 2017, 11:26:14 PM
    Author     : Usama Moin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <% 
            if(session.getAttribute("username")==null){
                response.sendRedirect("index.jsp");
            }
            else{
                
            }
        
        %>
        
        Hello ${username}
        <form action="logout">
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>
