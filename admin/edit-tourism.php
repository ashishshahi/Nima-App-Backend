<?php include "../includes/db-connect.php";include("session.php");include "../includes/function.php";
	$edit_id=$_GET['edit'];
	$SQL = "SELECT * FROM tourism where id=$edit_id";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$id     = $row['id'];
		$country =$row['country'];
		$state = $row['state'];
		$detail   = $row['detail'];
		}
###Function For Dynamic Drop down list
function subcountry($table,$col_id,$col_value,$sel=0)
{
	$SQL = "select state.state,resources.country from state,resources where resources.country = state.country order by state ASC";
	$rs = mysql_query($SQL) or die(mysql_error());
	$option_list = "<option value=0>Please Choose Any Sub Country</option>";
	while($data= mysql_fetch_assoc($rs))
	{
		$option_list.="<option value='$data[$col_id]'>$data[$col_value]</option>";
	}
	return $option_list;
}
 ?>
 <!DOCTYPE html>
 <html><head>
  <script src="plugins/ckeditor/ckeditor.js"></script>
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
</head>
<body>
<div class="container"><?php  include "head.php";?></div>
<div class="container">
<form action="" method="post">
<h4 align="center">Edit Tourism Detail</h4>
	<select name="country" class="form-control">
					<option><?php echo $country; echo ownership("resources","country","country");?></option>
	</select>
	<p>&nbsp</p>
	<select name="subcountry" class="form-control">
					<option><?php echo $state;echo subcountry("state","state","state");?></option>
	</select>
	<hr>
  <textarea name="detail" id="editor1"><?php echo $detail ?></textarea>
 <input type="submit" name="submit" value="Update" />
  </form></div>
<script>
 // Replace the <textarea id="editor1"> with a CKEditor
// instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
 </script>
 </body>
 </html>
 <?php
if(isset($_POST['submit']))
{
	$country=$_POST['country'];
	$subcountry = $_POST['subcountry'];
	$detail = $_POST['detail'];
	$edit_id = $_GET['edit'];
	$data=mysql_query("UPDATE `tourism` SET `country`='$country',`state`='$subcountry',`detail`='$detail' WHERE id='$edit_id'");
	if($data==true)
			{
				echo "<script>confirm('updated'); location='list-tourismboard.php' ;</script>";
			}
			else
			{
				echo "<script>confirm('try again')</script>";
			}
}
?>