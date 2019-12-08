<!DOCTYPE html>
<html>
<head>
  <script src="plugins/ckeditor/ckeditor.js"></script>
  <link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="container"><?php  
		include "head.php";
		include("session.php");
		include "../includes/db-connect.php";
?></div>
<?php 
###Function For Dynamic Drop down list
function country($table,$col_id,$col_value,$sel=0)
{
	$SQL = "SELECT * FROM $table order by $col_value";
	$rs = mysql_query($SQL) or die(mysql_error());
	$option_list = "<option value=0>Please Choose Any One Country</option>";
	while($data= mysql_fetch_assoc($rs))
	{
		$option_list.="<option value='$data[$col_id]'>$data[$col_value]</option>";
	}
	return $option_list;
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
<div class="container">
<form action="" method="post">
<h4 align="center">Add Tourism Detail</h4>
	<select name="country" class="form-control">
					<option><?php echo country("resources","country","country");?></option>
	</select>
	<p>&nbsp</p>
	<select name="subcountry" class="form-control">
					<option><?php echo subcountry("state","state","state");?></option>
	</select>
	<hr>
  <textarea name="detail" id="editor1"></textarea>
 <input type="submit" name="submit" />
  </form>
  </div>
</body>
<script>
 // Replace the <textarea id="editor1"> with a CKEditor
// instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
 </script>
</html>
<?php 
		if(isset($_POST['submit']))
		{
		$country = $_POST['country'];
		$subcountry = $_POST['subcountry'];
		$detail = $_POST['detail'];
		$sql = mysql_query("INSERT INTO tourism (id,country,state,detail) VALUES('','$country','$subcountry','$detail')");
		if($sql==true)
					{
				echo "Tourism Detail Add Sucessfully";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your data not save ";
			}
		}

 ?>