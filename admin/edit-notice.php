<?php include "../includes/db-connect.php";include("session.php");
	$edit_id=$_GET['edit'];
	$SQL = "SELECT * FROM notisboard where id = $edit_id ";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$detail   = $row['detail'];
		}

 ?>

<!DOCTYPE html>
<html>
<head>
 <script src="plugins/ckeditor/ckeditor.js"></script>
  <link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="container"><?php  
		include "head.php";
	
?></div>
<div class="container">
<form action="" method="post" enctype="multipart/form-data">
<h4 align="center">Edit Notice Board</h4>
<br>
<textarea name="detail" id="editor1"><?php echo $detail ?></textarea>
<br>
 <input type="submit" name="update" value="UPDATE"/>
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
		if(isset($_POST['update']))
		{
		$detail = $_POST['detail'];
		$sql = mysql_query("UPDATE `notisboard` SET `detail`='$detail' where id = $edit_id");
		if($sql==true)
					{
				echo "<script>alert('updated'); location='list-notice.php';</script>";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your Notice not Updated ";
			}
		}

 ?>