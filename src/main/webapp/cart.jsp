<%@page import="com.ShopNest.product.Cart"%>
<%@page import="com.ShopNest.product.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart - ShopNest</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #f1f1f1;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        .product-image {
            max-width: 50px;
            max-height: 50px;
        }

        .navbar {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #28a745; /* Green color for ShopNest */
        }

        .navbar a {
            text-decoration: none;
            color: #000; /* Black color for links */
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a class="navbar-brand" href="#">ShopNest</a>
    <div>
        <a href="products.jsp">Back</a>
        <span style="margin: 1 8px;">&nbsp;</span> <!-- Adding a gap -->
        <a href="home.jsp">Home</a>
    </div>
</div>

<%
    Cart c = (Cart) session.getAttribute("cart");
    List<Product> itemslist = c.getItems();
%>

<main>
    <table>
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Product product : itemslist) {
            %>
            <tr>
                <td><%= product.getPname() %></td>
                <td>Rs <%= product.getPprice() %></td>
                <td>
                  <img src="prodImg/<%= product.getPimg() %>" alt="<%= product.getPname() %>" class="product-image">
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">Total:</td>
                <td><h1>Rs <%= c.getTotal() %></h1></td>
            </tr>
        </tfoot>
    </table>
</main>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
