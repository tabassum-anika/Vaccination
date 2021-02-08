
<!DOCTYPE html>
<html>
<head>
    <title> User Registration</title>
    <link rel="stylesheet" type="text/css" href="signup_style.css" > 
     <link rel="stylesheet" type="text/css" href="signup.jpg" > 
    </head>
<body>
    <div class="header">
        <h2> Register</h2>
    </div> 
    <form method="POST" action="signUp.php">
   <div class="input-group">
        <label>Username</label>
          <input type="text" name="username" required>
        </div>    
   <div class="input-group">
        <label>Email Address</label>
          <input type="text" name="email" required>
        </div>
   <div class="input-group">
        <label>Phone number</label>
          <input type="number" name="phone_number" required>
        </div>
        
   <div class="input-group">
        <label>Password</label>
          <input type="password" name="password" required>
        </div>
     
    <button type="submit" value="submit" name="submit" class="btn">Register</button>
    </form>
    </body>
</html>
