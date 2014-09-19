<?php 
include 'functions.php';
include 'side_bar_operator.php';
include 'top_right_links.php';



if(isset($_POST['mobile'])) {

$name = $_POST['name'];
$mobile = $_POST['mobile'];
$age = $_POST['age'];
$clientid = $_POST['client_id'];
$doctorid = $_POST['doctor_id'];


/*$amtpay =$_POST['amtpay']; 
$amtrecieved = $_POST['amtrecieved'];
$referralpay = $_POST['referralpay'];*/

$db=new DB;
$userfirst = substr($name, 0, 3);
$userlast = substr($mobile, 2, 5);
$UID = substr(md5($userfirst.$age.$userlast), 0, 7); 

$table ="pateint_id_central_labs";
				
$db->insert($table, array(
								  "Pateint_First_Name"=>$name,
								  "Doctor_ID"=>$doctorid,
								  "Pateint_Age"=>$age,
								  "Pateint_Mobile"=>$mobile,
								  "Pateint_UID"=>$UID,
								  "Client_ID"=>$clientid
	                               ));


}
?>
<!-- Core CSS - Include with every page -->
    <link href="theme/css/bootstrap.min.css" rel="stylesheet">
    <link href="theme/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="theme/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="theme/css/plugins/timeline/timeline.css" rel="stylesheet">
	<link href= "multi_step_4.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="theme/css/sb-admin.css" rel="stylesheet">	
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
            </div>
            <!-- /.navbar-header -->

          
        <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="data_entry_1.php"><i class="fa fa-files-o fa-fw"></i> New</a>
                        </li>
						<li>
                            <a href="data_entry_2.php"><i class="fa fa-files-o fa-fw"></i>Search</a>
                        </li>
						</ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
		</nav>
		<div id="page-wrapper">
	<div class='row'>
	 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Samaadhan</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	</div>
        
<div class="col-lg-12">
                    <h1 class="page-header">Your UID is <?php echo $UID;?> </h1>
                </div>