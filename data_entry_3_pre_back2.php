<?php
include 'functions.php';
session_start();

		$uid=$_SESSION['uid'];
		$group=$_SESSION['group'];
		$time = time();
		$timeend= substr($time, 7, 10);
		$tid=$uid.$timeend;
		//var_dump($tid);
		
      	$db=new DB;
		
		$table1 ="test_results_labname";
		$table2 ="transactions_labname";
		foreach ($_POST as $key => $value) {
		if(is_numeric($key))
		{
			$tests[$key] = $value;
		}
		}

		foreach($tests as $key => $value) 
		{		
				$db->insert($table1, array(
								  "Transcation_ID"=>$tid,
								  "Pateint_UID"=>$uid,
								  "Test_ID"=>$key,
								  "Test_Results"=>$value
				 ));
		}
		
		$db->insert($table2, array(
								  "Transaction_ID"=>$tid,
								  "Pateint_UID"=>$uid,
								  "Group_ID"=>$group
				 ));
?>