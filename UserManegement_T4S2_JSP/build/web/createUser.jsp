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
        <% UserError userError= (UserError) request.getAttribute("USER_ERROR");
            if(userError == null){
                userError = new UserError();
            }
        %>
        <form action="MainController" method="POST">
            UserID<input type="text" name="userID" required=""/><% userError.getUserIDError(); %>
            </br>Full Name<input type="text" name="fullName" required=""/><% userError.getFullNameError(); %>
            </br>Roll ID<input type="text" name="roleID" value="US" required=""/> <% userError.getRoleIDError(); %>
            </br>Password<input type="password" name="password" required=""/> <% userError.getPasswordError(); %>
            </br>Confirm<input type="password" name="confirm" required=""/> <% userError.getConfirmError(); %>
            </br><input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
            
        </form>
    </body>
</html>
