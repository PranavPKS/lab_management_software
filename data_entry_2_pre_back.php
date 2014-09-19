<?php
session_start();
include 'functions.php';
$var = $_POST['data'];
$_SESSION['uid']=$var;
$db=new DB;
		$table ="Pateint_id_central_labs";
		$condition ="Pateint_UID ='$var'";
      	
		
		$query=$db->get($table,$condition);
		
		while($row=mysql_fetch_array($query))
		{	echo"
			<tr>
			<td>".$row['Pateint_First_Name']."</td>
			<td>".$row['Pateint_Mobile']."</td>
			<td><a href='data_entry_3.php'>FILL</a></td>
			</tr>";
		}
		
$db->close();
?>
			