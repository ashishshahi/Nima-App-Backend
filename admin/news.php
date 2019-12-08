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
<h4 align="center">Add Latest News</h4>
	<input type="text" name="title" placeholder="Enter Your News Title" class="form-control"/>
	 <div class="form-group">
					<label for="textarea-input">Upload News Picture</label>
					<input type="file" id="text-input" class="form-control" name="upload" accept = ".jpg,.jpeg,.png,.gif" required>
				  </div>
	<p>&nbsp</p>
	<hr>
  <textarea name="message" id="editor1"></textarea>
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
		$filename=$_FILES['upload']['name'];
		$filetempname=$_FILES['upload']['tmp_name'];
		$fname=md5($_SERVER['REMOTE_ADDR'].rand()).$filename;
		$filepath="uploads/".$fname;
		move_uploaded_file($filetempname,$filepath);
		if(isset($_POST['submit']))
		{
		$title = $_POST['title'];
		$message = $_POST['message'];
		$sql = mysql_query("INSERT INTO news (id,title,picture,message) VALUES('','$title','$filepath','$message')");
		if($sql==true)
					{
				echo "News  save  Sucessfully";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your data not save ";
			}
		}

 ?>