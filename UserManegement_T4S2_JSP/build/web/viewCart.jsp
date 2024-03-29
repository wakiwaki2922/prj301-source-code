<%-- 
    Document   : viewCart
    Created on : Oct 11, 2023, 11:10:10 AM
    Author     : kyrov
--%>

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
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null) {
        %>
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
                </tr>
            </thead>
            <tbody>
                <%
                    double total = 0;
                    int count = 1;
                    for (Fruit fruit : cart.getCart().values()) {
                        total += fruit.getPrice() * fruit.getQuantity();

                %>
            <form action="MainController" method="Get">
                <tr>

                    <td><%= count++%></td>
                    <td>
                        <input type="text" name="id" value="<%= fruit.getId()%>" readonly=""/>
                    </td>
                    <td><%= fruit.getName()%></td>
                    <td><%= fruit.getPrice()%></td>
                    <td>
                        <input type="text" name="quantity" value="<%= fruit.getQuantity()%>" required=""/>
                    </td>
                    <td><%= fruit.getPrice() * fruit.getQuantity()%></td>
                    <!--edit here-->
                    <td>
                        <input type="submit" name="action" value="Edit">
                    </td>

                </tr>
            </form>
            <%
                }

            %>
        </tbody>
    </table>
    <h1>
        Total: <%= total%>
    </h1>
    <%        }


    %>


    <a href="shopping.jsp">Return shopping</a>
</body>
</html>
