<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customer Registration</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f1f1f1;
    }

    .brand-name {
      text-align: center;
      margin-bottom: 20px;
    }

    .brand-name h1 {
      color: #4CAF50;
    }

    .registration-container {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      width: 400px;
      max-width: 100%;
      padding: 20px;
      box-sizing: border-box;
      margin: auto;
      margin-top: 20px;
    }

    h2 {
      color: #333;
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 20px;
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

    /* Custom style for radio buttons */
    .form-check-inline {
      display: inline-block;
      margin-right: 20px;
    }

    .sign-in-section {
      text-align: center;
      margin-top: 10px; /* Adjusted margin */
    }

    .sign-in-section p {
      margin-bottom: 0;
    }

    .sign-in-section a {
      color: #007bff;
    }
  </style>
</head>
<body>

  <div class="brand-name">
    <h1>ShopNest</h1>
  </div>

  <div class="container registration-container">
    <h2>Register here!</h2>
    <form method="post" action="reg">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>

      <div class="form-group">
        <label>Gender:</label>
        <div class="form-check form-check-inline">
          <input type="radio" class="form-check-input" name="gender" id="male" value="male">
          <label class="form-check-label" for="male">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" class="form-check-input" name="gender" id="female" value="female">
          <label class="form-check-label" for="female">Female</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" class="form-check-input" name="gender" id="other" value="other">
          <label class="form-check-label" for="other">Other</label>
        </div>
      </div>

      <div class="form-group">
        <label for="address">Address:</label>
        <input type="text" class="form-control" id="address" name="address" required>
      </div>

      <button type="submit" class="btn btn-primary">Register</button>
      
      <div class="sign-in-section">
     <u> <p>Already a user? <a href="login.jsp">Log In Instead</a></p></u>  
      </div>
      
    </form>
  </div>

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
