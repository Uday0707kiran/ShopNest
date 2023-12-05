<%@page import="com.ShopNest.dbHandler.DataFetcher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopNest - Products</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #f1f1f1;
            padding: 20px;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: stretch;
            max-width: 1200px;
            margin: 0 auto;
        }

        .product-card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 300px;
            margin: 10px;
            padding: 10px;
            display: flex;
            flex-direction: column;
            text-align: center;
        }

      .product-image {
    max-width: 200px;
    max-height: 200px;
    margin-bottom: 10px;
    margin: 0 auto;
    text-align:center;
    align-content: center;
}

        .product-details {
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            text-align: center;
        }

        .product-title {
            font-size: 1.25rem;
            margin-bottom: 10px;
        }

        .product-price {
            font-size: 1.25rem;
            color: #007bff;
            margin-top: 10px;
        }

        .add-to-cart-btn {
            margin-top: 10px;
            align-self: center;
        }

        .page-heading {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container">
        <a class="navbar-brand" href="#">ShopNest</a>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">View Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-heading">
    <h2>ShopNest Products</h2>
</div>

<%
   List productList = DataFetcher.fetchproductsinfo(); // Assuming DataFetcher returns a List<Product>
%>

<div class="product-container">
    <% for (int i = 0; i < productList.size(); i++) {
        String[] productArr = ((String) productList.get(i)).split(":");
        String imagePath = request.getContextPath() + "/prodImg/" + productArr[4]; 
    %>
        <div class="product-card">
            <img src="<%= imagePath %>" alt="<%= productArr[1] %>" class="product-image" style="max-width: 100px; max-height: 200px;">
            <div class="product-details">
                <h4 class="product-title"><%= productArr[1] %></h4>
                <p><%= productArr[2] %></p>
                <p class="product-price">Rs <%= productArr[3] %></p>
                <form action="addtoc" method="post">
                    <input type="hidden" name="productId" value="<%= productArr[0] %>">
                    <button type="submit" class="btn btn-primary add-to-cart-btn">Add to Cart</button>
                </form>
            </div>
        </div>
    <% } %>
</div>



<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
