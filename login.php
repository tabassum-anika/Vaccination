<?php
$uname=$_POST['uname'];
$password=$_POST['password'];
session_start();

$con=mysqli_connect("localhost","root","","vaccination");
$qry = "SELECT * FROM users WHERE user_name = '$uname' AND password = '$password' ";
$result=mysqli_query($con,$qry);
$count=mysqli_num_rows($result);
if($count==1)
{
	echo "Login success";
	$_SESSION['log']=1;
	header("refresh:2;url=welcome.php");

}
else
{
	echo "please fill proper details";
	header("refresh:2;url=login_index.php");
}
?>

