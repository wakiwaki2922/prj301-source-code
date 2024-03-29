<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Fruit"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
    </head>
    <body>
        <c:set var="cart" value="${sessionScope.CART}" />
        <c:if test="${not empty cart}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="total" value="0" />
                    <c:set var="count" value="1" />
                    <c:forEach var="fruit" items="${cart.cart}">
                        <c:set var="subtotal" value="${fruit.value.price * fruit.value.quantity}" />
                        <tr>
                    <form action="MainController" method="Get">
                        <td>${count}</td>
                        <td>
                            <input type="text" name="id" value="${fruit.value.id}" readonly=""/>
                        </td>
                        <td>${fruit.value.name}</td>
                        <td>${fruit.value.price}</td>
                        <td>
                            <input type="text" name="quantity" value="${fruit.value.quantity}" required=""/>
                        </td>
                        <td>${subtotal}</td>
                        <td>
                            <input type="submit" name="action" value="Edit">
                        </td>
                        <td>
                            <input type="submit" name="action" value="Remove">
                        </td>
                    </form>
                    <c:set var="total" value="${total + subtotal}" />
                    <c:set var="count" value="${count + 1}" />
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <h1>Total: ${total}</h1>
</c:if>
<a href="shopping.jsp">Return shopping</a>
</body>
</html>
