<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
  <style type="text/css">
	.message{
	margin-top: -225px;
    margin-left: 360px;
    margin-right: 277px;
	}
	#input{
	width: 109%;
	height:45px;
	}
	#showmessage{
    font-family: Arial;
    font-size: 12px;
	}
	#img{
	background-image: url('../images/phone-images.png');
	background-repeat: no-repeat;
    background-attachment: scroll;
    background-position: center; 
	height: 950px;
	}
	td{
	border:1px dashed #ddd;
	}
	.frame{
	margin-top: 120px;
    height: 600px;
    overflow: scroll;
    margin-right: 388px;
    margin-left: 390px;
	overflow-x: hidden;
	}
	#btn {
	    padding: 11px 12px;
	}
</style>
</head>

<body>

<div class="container"><?php  include "head.php";?></div>
<div class="container">
<div class="row" id="img">
<div class="frame">
<table class="table table-hover table-strid" id="showmessage">
<?php 
include "../includes/db-connect.php";
$SQL = "SELECT * FROM chat";
	$rs = mysql_query($SQL) or die(mysql_error());
while ($row = mysql_fetch_array($rs)){
		$username = $row['username'];
		$message   = $row['message'];
		$org = $row['org'];
		$created = $row['created'];
?>
  <tr>
    <td ><?php echo $username ?></td>
    <td ><?php echo $org ?></td>
  </tr>
  <tr>
    <td colspan="2" ><?php echo $message ?></td>
  </tr>
  <tr>
    <td colspan="2"align="right"><?php echo $created ?></td>
  </tr>


<?php } ?>
</table>
</div>
</div>
			<div class="message">
				<div class="col-sm-8">
				<form action="" name="message" method="post">
				<input type="text" name="message" id="input" class="form-control" placeholder="Enter Message" required />
				</div>
				<div class="col-sm-4">
				<button class="btn btn-info" id="btn" <input type="submit" name="submit" value="SEND"/>SEND</button>
				</form>
				</div>
			</div>
</div>
</body>
</html>
<?php include "../includes/db-connect.php";include("session.php");
date_default_timezone_set('Asia/Kolkata');
if(isset($_POST['submit']))
{
$username ='ADMIN';
$message =$_POST['message'];
$org = 'NIMA';

$created = date('d/m/Y h:i:s a', time());
$sql = mysql_query("INSERT INTO chat (username,message,org,created) VALUES ('$username','$message','$org','$created')");
if($sql==true)
	{
		echo "<script>confirm('Your Message has been send sucessfullly..');location='messages.php'</script>";
		
		
	}
	else{
		echo "Error: " . $sql ."<br>"."your data not save ";
	}
}
?>