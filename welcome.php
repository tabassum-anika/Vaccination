<?php
session_start();
if(isset($_SESSION['log']))
{
?>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
    
<style>
ul{
    float: center;
    list-style-type: none;
    margin-top: 10px;
}
</style>
<body>
 <h1>Welcome</h1>
    <form action="main.php" method="post">
    <input type="text" name="area" placeholder="search for loaction">
    <input type="submit" value="search">    
    </form>    
    
<div>
    <ul>
      <li> <a href="front.php" >logout</a> </li> 
    </ul>
</div>    
</body>
</html>

<?php
}
else
{
	echo "please fill proper details";
	header("refresh:2;url=login_index.php");
}

?>