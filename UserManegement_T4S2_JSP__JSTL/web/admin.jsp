

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.LOGIN_USER == null} || ${sessionScope.LOGIN_USER .roleID ne 'AD'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        <h1>${sessionScope.LOGIN_USER.fullName}</h1>
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="Logout">
        </form>
        <a href="MainController?action=Logout">Logout link</a>
        <c:url var="logout" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
        <a href="${logout}">Logout JSTL</a>
        <form action="MainController" method="POST">
            Search<input type="text" name="search" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <c:if test="${requestScope.LIST_USER !=null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                        <form action="MainController" method="POST">

                            <tr>
                                <td>${counter.count}</td>
                                <td>
                                    <input type="text" name="userID" value="${user.userID}" readonly=""
                                </td>
                                <td>
                                    <input type="text" name="fullName" value="${user.fullName}" required=""
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}" required=""
                                </td>
                                <td>${user.password}</td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="search" value="${param.search}"/>
                                </td>
                                <td>
                                    <c:url var="delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${delete}">Delete</a>
                                </td>
                            </tr>   
                        </form>
                    </c:forEach>
                </tbody>
            </table>
                <h3>${requestScope.ERROR}</h3>
        </c:if>
    </c:if>
</body>
</html>






