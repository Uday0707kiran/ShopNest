<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - ShopNest</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background: linear-gradient(45deg, #FF6B6B, #7B68EE);
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .login-container {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      width: 400px;
      max-width: 100%;
      padding: 30px;
      box-sizing: border-box;
    }

    .brand-name {
      text-align: center;
      margin-bottom: 20px;
    }

    .brand-name h1 {
      color: #4CAF50;
    }

    .form-heading {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-heading h2 {
      color: #333;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      color: #333;
    }

    input.form-control {
      border-color: #4CAF50;
    }

    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
    }

    button:hover {
      background-color: #45a049;
    }

    .signup-link {
      text-align: center;
      margin-top: 20px;
    }

    .signup-link p {
      margin-bottom: 0;
      color: #333;
    }

    .signup-link a {
      color: #007bff;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <div class="brand-name">
      <h1>ShopNest</h1>
    </div>

    <div class="form-heading">
      <h2>Login to Shop</h2>
    </div>

    <form action="log" method="post">
      <div class="form-group">
        <label for="email">Username:</label>
        <input type="text" class="form-control" id="uname" name="uname" required>
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>

      <button type="submit" class="btn btn-primary">Login</button>
    </form>

    <div class="signup-link">
      <p>Don't have an account? <a href="register.jsp">Sign Up</a></p>
    </div>
  </div>

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
