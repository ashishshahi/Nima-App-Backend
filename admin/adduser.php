<?php
	include("../includes/db-connect.php"); include("session.php");;
if(isset($_POST['submit']))
{
	$username=$_POST['username'];
	$password=$_POST['password'];
	$user_id = $_GET['user'];
	$data=mysql_query("UPDATE `record` SET 	`username`='$username',`password`='$password' WHERE m_id='$user_id'");
	 
	if($data==true)
	{
		//echo "User and Password save Sucessfully";
			header('Location: thnkyou.php');
	}
	else{
		echo "your data not save ";
	}
}?>
<link rel='stylesheet' href='../css/bootstrap.min.css' type='text/css' />
<link href='../css/logincss.css' rel='stylesheet' type='text/css'/>
<?php
$user_id = $_GET['user'];
	$d=mysql_query("select * from record where m_id=$user_id"); 
		$rec=mysql_fetch_row($d);
echo"<body>
<div class='container'>
    	<div class='row'>
			<div class='col-md-6 col-md-offset-3'>
				<div class='panel panel-login'>
					<div class='panel-heading'>
						<div class='row'>
							<div class='col-xs-12'>
								<a href='adduser.php' class='active' id='login-form-link'>ADD USER</a>
							</div>
							<div class='col-xs-6'>
								<!--<a href='../index.php' class='register'>ADD NEW MEMBER</a>-->
							</div>
						</div>
						<hr>
					</div>
					<div class='panel-body'>
						<div class='row'>
							<div class='col-lg-12'>
								<form id='login-form' action='' method='post'  style='display: block;'>
									<div class='form-group'>
						<input type='text' name='username' id='username' tabindex='1' class='form-control' placeholder='Username' value='$rec[27]'  required>
									</div>
									<div class='form-group'>
						<input type='password' name='password' id='password' tabindex='2' class='form-control' placeholder='Password' value='$rec[28]' required>
									</div>
									<div class='form-group'>
										<div class='row'>
											<div class='col-sm-6 col-sm-offset-3'>
												<input type='submit' name='submit' id='login-submit' tabindex='4' class='form-control btn btn-login' value='ADD USER'>
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
</body>"	?>