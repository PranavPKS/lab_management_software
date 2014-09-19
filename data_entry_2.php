<!DOCTYPE html>
<html>
<?php
include 'functions.php';
?>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Samadhaan</title>

    <!-- Core CSS - Include with every page -->
    <link href="theme/css/bootstrap.min.css" rel="stylesheet">
    <link href="theme/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="theme/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="theme/css/plugins/timeline/timeline.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="theme/css/sb-admin.css" rel="stylesheet">

</head>
<body>

    <div id="wrapper">

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

            <?php
			include 'top_right_links.php';
			?>

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
        <div class="row">
		</div>
		<div class ="row">
		<div class ="col-lg-8" style ="margin-top:20px;">
		<div class="form-group input-group">
                                            <input type="text" class="form-control" name="uid" placeholder="Patient UID" id="uid">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button" id='search'><i class="fa fa-search"></i>
                                                </button>
                                            </span>
                                        </div>
	
		</div>
		</div>
		<div class="row"> 
		  <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Patient Record
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="mytable">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Mobile</th>
											<th>FILL</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
		 </div>
		</div>
		
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="theme/js/jquery-1.10.2.js"></script>
    <script src="theme/js/bootstrap.min.js"></script>
    <script src="theme/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    

    <!-- SB Admin Scripts - Include with every page -->
    <script src="theme/js/sb-admin.js"></script>
	
 
<script type="text/javascript">
$("#search").click(function(e)
{
	var k = "test";
	console.log(k);
    var postData = $("#uid").val();
    var formURL = "data_entry_2_pre_back.php";
    $.ajax(
    {
        url : formURL,
        type: "POST",
        data : {data:postData},
        success:function(data, textStatus, jqXHR)
        {
			$('#mytable tbody').html(data);
			
        },
        error: function(jqXHR, textStatus, errorThrown)
        {
            
        }
    });
});
 
</script>
</body>
</html>
