

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
    <c:if test="${sessionScope.LOGIN_USER==null || sessionScope.LOGIN_USER.roleID ne 'US'}">
        <c:redirect url="login.html"></c:redirect>
    </c:if>
        <h1>This is User Page</h1>
        UserID:${sessionScope.userID}
        </br>FullName: ${sessionScope.fullName}
        </br>RoleID: ${sessionScope.roleID}
        </br>Password:******

    </body>
</html>
