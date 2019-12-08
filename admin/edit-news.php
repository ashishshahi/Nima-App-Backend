<?php include "../includes/db-connect.php";include("session.php");
	$edit_id=$_GET['edit'];
	$SQL = "SELECT * FROM news where id=$edit_id";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$id     = $row['id'];
		$title =$row['title'];
		$picture =$row['picture'];
		$message   = $row['message'];
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
<form action="" method="post" enctype="multipart/form-data">
<h4 align="center">Edit News</h4>
	<input type="text" name="title" placeholder="Enter Your News Title" class="form-control" value="<?php echo $title; ?>"/>
	<img src="<?php echo "$picture"; ?>" alt='image' width="300px"/>
	<div class="form-group">
					<label for="textarea-input">Change Picture</label>
					<input type="file" id="text-input" class="form-control" name="upload" accept = ".jpg,.jpeg,.png,.gif" required>
				  </div>
	<p>&nbsp</p>
	<hr>
  <textarea name="message" id="editor1"><?php echo $message ?></textarea>
  <input type="submit" name="submit" value="Update"  />
  </form></div>
<script>
 // Replace the <textarea id="editor1"> with a CKEditor
// instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
 </script>
 </body>
 </html>
 <?php
 $filename=$_FILES['upload']['name'];
		$filetempname=$_FILES['upload']['tmp_name'];
		$fname=md5($_SERVER['REMOTE_ADDR'].rand()).$filename;
		$filepath="uploads/".$fname;
		move_uploaded_file($filetempname,$filepath);
if(isset($_POST['submit']))
{
	$title=$_POST['title'];
	$message = $_POST['message'];
	$edit_id = $_GET['edit'];
	$data=mysql_query("UPDATE `news` SET `title`='$title',`picture`='$filepath',`message`='$message' WHERE id='$edit_id'");
	if($data==true)
			{
				echo "<script>confirm('updated'); location='view-news.php' ;</script>";
			}
			else
			{
				echo "<script>confirm('try again')</script>";
			}
}
?>