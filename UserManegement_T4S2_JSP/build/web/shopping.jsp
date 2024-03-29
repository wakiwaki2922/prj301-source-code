<%-- 
Document   : shopping.jsp
Created on : Oct 11, 2023, 10:55:09 AM
Author     : kyrov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit Store JSP</title>
    </head>
    <body>
        <h1>
            Welcome to fruit paradise!
        </h1>
        <form action="MainController" method="POST">
            <select name="cmbFruit">
                <option value="F001-Green Apple-50">Green Apple-50$</option>
                <option value="F002-Blue Banana-60">Blue Banana-60$$</option>
                <option value="F003-304 Avocado-100">304 Avocado-100$</option>
                <option value="F004-Dalat Strawberry-150">Dalat Strawberry-150$</option>
            </select>
            <select name="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>

        </form>
        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null) {
                message = "";
            }
        %>
        <%=message%>
    </body>
</html>
