<?php

    $database = mysqli_connect('localhost','root','','vaccination');
    $area= $_POST['area'];
   

    echo "<br><br>Hospital name..................Area";
    echo "<br>...................<br>";
    
       
    $sql = "select * from locations where area = '$area'";

    $res = mysqli_query($database,$sql);
    $row = mysqli_num_rows($res);

		while($row = $res->fetch_assoc())
			{
	        	echo $row["center_name"]."-----".$row["area"]."<br>";  	
        	}
?>
                