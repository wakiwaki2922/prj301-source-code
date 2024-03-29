<%-- 
    Document   : createUser
    Created on : Oct 7, 2023, 10:17:33 AM
    Author     : kyrov
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            UserID<input type="text" name="userID" required=""/>
            ${requestScope.USER_ERROR.userIDError}
            </br>Full Name<input type="text" name="fullName" required=""/>
            ${requestScope.USER_ERROR.fullNameError}
            </br>Roll ID<input type="text" name="roleID" value="US" required=""/>
            ${requestScope.USER_ERROR.roleIDError}
            </br>Password<input type="password" name="password" required=""/> 
            ${requestScope.USER_ERROR.passwordError}
            </br>Confirm<input type="password" name="confirm" required=""/> 
            ${requestScope.USER_ERROR.confirmError}
            </br><input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>

        </form>
        ${requestScope.USER_ERROR.error}

    </body>
</html>
