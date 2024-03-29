<%@page import="sample.errors.ProductError"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="sample.products.ProductDTO"%>
<%@page import="sample.products.ProductDTO"%>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Products</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </head>
    <body>

        <h1>Product Management</h1>

        <%
// xac thuc phan quyen : chi user login voi role 'QL' moi vao duoc trang nay
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("QL")) {
                response.sendRedirect("login.html");
            }

        %>

        <%            HashMap<Integer, ProductDTO> listProduct = (HashMap<Integer, ProductDTO>) session.getAttribute("LIST_PRODUCT_FROM_MANAGER");
            if (listProduct != null || listProduct.size() > 0) {


        %>


        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Product ID</th>
                    <th>Name</th>                  
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>

                <%  int count = 1;
                    for (Map.Entry<Integer, ProductDTO> productIndex : listProduct.entrySet()) {

                %>


            <form action="MainController" method="POST">   <%-- editting directly from the form --%>
                <tr>
                    <td>
                        <%= count++%>
                    </td>
                    <td>
                        <%= productIndex.getValue().getProductID()%>
                    </td>
                    <td>
                        <%= productIndex.getValue().getProductName()%>
                    </td>
                    <td>
                        <input type="text" name="price" value="<%= productIndex.getValue().getPrice()%>" >
                    </td>
                    <td>
                        <input type="text" name="quantity" value="<%= productIndex.getValue().getQuanity()%>" >
                    </td>
                    <td>
                        <input type="submit" name="action" value="EditProduct"  />
                        <input type="hidden" name="productID" value="<%= productIndex.getValue().getProductID()%>" />
                        <input type="hidden" name="productName" value="<%= productIndex.getValue().getProductName()%>"  />
                    </td>
                </tr>
            </form> 

            <%                }
                }

            %>

            <%                String updateStatus = (String) request.getAttribute("UPDATE_PRODUCT_SUCCESS");

                if (updateStatus == null) {
                    updateStatus = "";
                }
            %>

            <%
                ProductError errorUpdate = (ProductError) request.getAttribute("ERROR_UPDATE");
                if (errorUpdate == null) {
                    errorUpdate = new ProductError();
                }

            %>


            <%= errorUpdate.getPriceError()%><br>
            <%= errorUpdate.getQuantityError()%>





            </tbody>    
        </table>
        <a href="addProduct.jsp"> Add Product </a> <br>

        <%=updateStatus%>




    </body>
</html>
