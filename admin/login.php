
<?php 
	session_start(); 
	if(isset($_SESSION['role']))
	{
	?>
	<meta http-equiv="refresh" content="0;index.php"/>
	<?php
		exit(0);
	}
?>
<?php
include '../includes/db-connect.php';
 @session_start();
if(isset($_POST['login']))
{
	$email=$_POST['email'];
	$pass=$_POST['pass'];
	$_SESSION['ses']=$email;
	//$_SESSION['pass']=$pass;
	$data=mysql_query("select * from admin where `email`='$email' AND `pass`='$pass' and status='true'");
	$admin=mysql_num_rows($data);
	$_SESSION['role']=$data['role'];
	$_SESSION['email']=$data;
	if($admin==true)
	{
		$_SESSION['admin']=session_id();
		echo "<script>confirm('You are sucessfuly Login. Thanks For Choosing Me.');location='index.php'</script>";
	}
	
	else
	{
		echo "<script>alert('emailid and password is wrong')</script>";
	}
}

?>	

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../css/logincss.css" rel="stylesheet" type="text/css"/>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="login.php" class="active" id="login-form-link">LOGIN</a>
							</div>
							<div class="col-xs-6">
								<!--<a href="../index.php" class="register">ADD NEW MEMBER</a>-->
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="" method="post"  style="display: block;">
									<div class="form-group">
										<input type="email" name="email" id="username" tabindex="1" class="form-control" placeholder="Username"  required>
									</div>
									<div class="form-group">
										<input type="password" name="pass" id="password" tabindex="2" class="form-control" placeholder="Password" required>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	