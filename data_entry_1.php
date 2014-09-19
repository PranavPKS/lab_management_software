<html lang="en">
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
	<link href= "multi_step_4.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="theme/css/sb-admin.css" rel="stylesheet">

</head>
<title>
Data entry operator
</title>
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
			<?php
			include 'side_bar_operator.php';
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
	<div class='row'>
	 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Samaadhan</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	</div>

<div class="row">
    <div class="col-md-4 col-md-offset-2">
   
<form id="msform" class="form-horizontal" action="data_entry_1_back.php" method="POST">
	
	
	
	<fieldset>
		<h2 class="fs-title">Details</h2>
		
		<div class="form-group">
            <label class="col-sm-4 control-label" for="textinput">Name</label>
				<div class="col-sm-8">
					<input type="text" name ="name" placeholder="Name" class="form-control">
				</div>
        </div>
		<div class="form-group">
            <label class="col-sm-4 control-label" for="textinput">Age</label>
				<div class="col-sm-8">
					<input type="text" name ="age" placeholder="Age" class="form-control">
				</div>
        </div>
		<div class="form-group">
            <label class="col-sm-4 control-label" for="textinput">Mobile</label>
				<div class="col-sm-8">
					<input type="text" name ="mobile" placeholder="Mobile No." class="form-control">
				</div>
        </div>
		<div class="form-group">
            <label class="col-sm-4 control-label" for="textinput">Client ID</label>
				<div class="col-sm-8">
					<input type="text" name ="client_id" placeholder="Client ID" class="form-control">
				</div>
        </div>
		<div class="form-group">
            <label class="col-sm-4 control-label" for="textinput">Doctor ID</label>
				<div class="col-sm-8">
					<input type="text" name ="doctor_id" placeholder="Doctor ID" class="form-control">
				</div>
        </div>
		<button type="submit" name ="add" class="btn btn-primary action-button pull-right" value ="save">Save</button>
	</fieldset>
</form>

<!-- jQuery -->
<script src="jquery.js" type="text/javascript"></script>
<!-- jQuery easing plugin -->
<script src="easing.min.js" type="text/javascript"></script>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
</div>
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrapValidator.min.js"></script>
	  <script src="theme/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="theme/js/sb-admin.js"></script>
	<script type="text/javascript">
$(".submit").click(function(){
	return false;
})
});
$(document).ready(function() {
    $('#msform').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
		live: 'enabled',
    message: 'This value is not valid',
    submitButtons: 'button[type="submit"]', 
    submitHandler: null,
    trigger: null,
        fields: {
            firstname: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The Name is required and cannot be empty'
                    },
                   /* stringLength: {
                        min: 0,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },*/
                   /* regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The username can only consist of alphabetical, number and underscore'
                    }*/
                }
            },
			name: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The Name is required and cannot be empty'
                    }
                }
            },
			age: {
                validators: {
                    notEmpty: {
                        message: 'The Age is required and cannot be empty'
                    },
					integer: {
						message: 'Enter a valid age'
					},
					between: {
						min: 1,
						max: 110,
						messsage: 'Enter a valid age'
					}
                }
            },
			mobile: {
                message: 'Mobile number is not valid',
                validators: {
                    notEmpty: {
                        message: 'The number is required and cannot be empty'
                    },
                    stringLength: {
                        min: 10,
                        max: 10,
                        message: 'Enter the 10-digit phone number without 0 or +91'
                    },
                   
                }
            }
			
        }
    });
});
</script>
</body>

									
			 </html>
