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
?></div>
<div class="container">
<form action="" method="post" enctype="multipart/form-data">
<h4 align="center">Add Airline</h4>
<input type="text" name="airline" placeholder="Enter Your Airline Name" class="form-control"/>
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
<?php include "../includes/db-connect.php";
		if(isset($_POST['submit']))
		{
		$name =$_POST['airline'];
		$detail = $_POST['detail'];
		$sql = mysql_query("INSERT INTO airline (id,name,description) VALUES('','$name','$detail')");
		if($sql==true)
					{
				echo "Airline List  save  Sucessfully";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your Airline Record not save ";
			}
		}

 ?>