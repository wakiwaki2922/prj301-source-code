<%-- 
    Document   : login
    Created on : Sep 20, 2023, 11:37:25 AM
    Author     : kyrov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="MainController" method="POST">
            UserID<input type="text" name="userID"/>
            </br>Password<input type="password" name="password">
            </br><input type="submit" name="action" value="Login">
            <input type="reset"  value="Reset">
        </form>
    </body>
</html>
