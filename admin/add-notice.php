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
<h4 align="center">Add Notice</h4>
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
		$detail = $_POST['detail'];
		$sql = mysql_query("INSERT INTO notisboard (id,detail) VALUES('','$detail')");
		if($sql==true)
					{
				echo "Notice  save  Sucessfully";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your data not save ";
			}
		}

 ?>