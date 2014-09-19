
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
	                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Groups Record
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="mytable">
                                    <thead>
                                        <tr>
                                            <th>Group_ID</th>
                                            <th>Group Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                             
	
<?php
session_start();
include 'functions.php';
$uid=$_SESSION['uid'];
		$db = new DB;
		$table1 ="test_groups";
		$result = $db->get_all($table1);
		while($arr = mysql_fetch_assoc($result))
		{
			$k[$arr['Group_ID']] = $arr['Group_Name'];
		}
		
		
		
		foreach ($k as $key => $value) 
		{
      	?>
      	
		<tr>
			<td><?php echo $key;?></td>
            <td><a href='data_entry_3_pre_back.php?group=<?php echo $key;?>' class="col-sm-4 control-label" for="textinput"><?php echo $value; ?></a></td>
        </tr>
		
      	<!------php----->
        
        <?php
		}
	?>

       </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>		
			</div>
			
			