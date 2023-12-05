<%@page import="com.ShopNest.dbHandler.DataFetcher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Admin Home - ShopNest</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background: #f1f1f1;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .admin-container {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      width: 1200px; /* Increased width */
      max-width: 100%;
      padding: 40px; /* Increased padding */
      box-sizing: border-box;
      margin-top: -130px; /* Adjusted margin-top */
    }

    .brand-name {
      text-align: center;
      margin-bottom: 20px;
    }

    .brand-name h1 {
      color: #4CAF50;
    }

    .nav-tabs .nav-item {
      flex: 1; /* Equally distribute tabs */
      margin-bottom: 15px;
      text-align: center;
    }

    .nav-tabs .nav-link {
      background-color: #007bff;
      color: white;
      border: 1px solid #007bff;
      border-radius: 40px;
    }

    .nav-tabs .nav-link:hover {
      background-color: #0056b3;
    }

    .tab-content {
      margin-top: 30px; /* Increased margin-top */
      max-height: 300px; /* Maximum height for scroll */
      overflow-y: auto; /* Enable vertical scroll */
    }

    .tab-pane {
      padding: 30px; /* Increased padding */
      background-color: #fff;
      border-radius: 4px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .customer-table {
      width: 100%;
      margin-top: 20px;
    }

    .customer-table th, .customer-table td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    .customer-table th {
      background-color: #007bff;
      color: white;
    }
  </style>
</head>
<body>
<%
   List userList = DataFetcher.fetchusersinfo(); // Assuming DataFetcher returns a List
   List prodList = DataFetcher.fetchproductsinfo();
%>

  <div class="admin-container">
    <div class="brand-name">
      <h1>ShopNest Admin</h1>
    </div>

    <ul class="nav nav-tabs" id="myTabs">
      <li class="nav-item">
        <a class="nav-link active" id="viewCustomers-tab" data-toggle="tab" href="#viewCustomers">View Customers</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="viewProducts-tab" data-toggle="tab" href="#viewProducts">View Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="addProducts-tab" data-toggle="tab" href="#addProducts">Add Products</a>
      </li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane fade show active" id="viewCustomers">
        <table class="table customer-table">
          <thead>
            <tr>
              <th>Username</th>
              <th>Email</th>
              <th>Gender</th>
              <th>Address</th>
            </tr>
          </thead>
        <tbody>
    <%  	for (int i = 0; i < userList.size(); i++) {
        	String[] custarr = ((String) userList.get(i)).split(":");
    %>
        <tr>
            <td><%= custarr[0] %></td>
            <td><%= custarr[1] %></td>
            <td><%= custarr[2] %></td>
            <td><%= custarr[3] %></td>
        </tr>
    <% 
   		 } 
    %>
    <tr>
    </tr>
</tbody>

        </table>
      </div>
    <div class="tab-pane fade" id="viewProducts">
    <table class="table product-table">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Product Image</th>
            </tr>
        </thead>
        <tbody>
            <% for (int i = 0; i < prodList.size(); i++) {
                String[] productArr = ((String) prodList.get(i)).split(":");
            %>
                <tr>
                    <td><%= productArr[0] %></td>
                    <td><%= productArr[1] %></td>
                    <td><%= productArr[2] %></td>
                    <td><%= productArr[3] %></td>
                    <td><img src="prodImg/<%= productArr[4] %>" alt="product 1" class="product-image"></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</div>

    <div class="tab-pane fade" id="addProducts">
    <form action="addP" method="post" >
        <div class="form-group">
            <label for="productId">Product ID:</label>
            <input type="text" class="form-control" id="productId" name="productId" required>
        </div>
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="productName" required>
        </div>
        <div class="form-group">
            <label for="productDescription">Product Description:</label>
            <textarea class="form-control" id="productDescription" name="productDescription" required></textarea>
        </div>
        <div class="form-group">
            <label for="productPrice">Product Price:</label>
            <input type="number" class="form-control" id="productPrice" name="productPrice" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="productImage">Product Image File Name:</label>
            <input type="text" class="form-control" id="productImage" name="productImage"  required>
        </div>
        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
</div>

    </div>
  </div>

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
