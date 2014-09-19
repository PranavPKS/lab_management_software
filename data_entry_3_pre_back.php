
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
<div id='page-wrapper'>
			<div class='row'>
			<div class='col-md-4 col-md-offset-2'>

			<div class='col-md-4 col-md-offset-2'>
			<form id='msform' class='form-horizontal' action='data_entry_3_pre_back2.php' method='POST'>
			<fieldset>
				<h2 class='fs-title'>Details</h2>		
	<?php
	session_start();
	$uid=$_SESSION['uid'];
	
	
	include 'functions.php';
	$group = $_GET['group'];
	$_SESSION['group']=$group;
		$table ="tests_table";
		$condition ="Group_ID ='$group'";
      	$db=new DB;
		$query=$db->get($table,$condition);
		
		while($row=mysql_fetch_array($query))
		{
			echo"<div class=\"form-group\">
            <label class=\"col-sm-4 control-label\" for=\"textinput\">".$row['Name']."</label>
				<div class=\"col-sm-8\">
					<input type=\"text\" name =\"".$row['Test_ID']."\" placeholder=\"".$row['Name']."\" class=\"form-control\">
				</div>
        </div>";
		}
		
	$db->close();
	
		?>
		
		<button type="submit" name ="add" class="btn btn-primary action-button pull-right" value ="save">Save</button>
				</fieldset>
				</form></div></div></div></div>
				
				