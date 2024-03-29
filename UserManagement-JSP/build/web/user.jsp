<%-- 
    Document   : user
    Created on : Sep 20, 2023, 11:36:34 AM
    Author     : kyrov
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null) {
                loginUser = new UserDTO();
            }
        %>
        <h1>User page</h1>
        User ID: <%=loginUser.getUserID()%>
        Full Name: <%=loginUser.getFullName()%>
        Role ID: <%=loginUser.getRoleID()%>
        </br>Password:xxx
        

    </body>
</html>
