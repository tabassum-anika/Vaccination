<?php
session_start();
?>
<!DOCTYPE html>
 <html>
  <head>
      <link rel="stylesheet" type="text/css" href="login_style.css">
      <link rel="stylesheet" type="text/css" href="login_pic.jpg">
                                            
   <title>
  Log in
   </title>
  </head>
  <body>
    <form method="post" action="login.php">
	 <table cellpadding="20">
	  <th colspan="2">
	  LOGIN
	  </th>
	  <tr>
	  <td>username</td>
	  <td> <input type="text" size="60" name="uname"> 
	  </tr>
	  <tr>
	  <td>Password</td>
	  <td> <input type="password" size="60" name="password" >
	  </tr>
	  <th colspan="2">
	  <input type="submit" value="login" class="submit" size="40" >
	  </th>
	 </table>
	</form>
  </body>
 </html>
<?php
session_destroy();
?>