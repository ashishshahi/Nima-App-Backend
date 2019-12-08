<?php include "../includes/db-connect.php";include("session.php");
	$edit_id=$_GET['edit'];
	$SQL = "SELECT * FROM airline where id = $edit_id ";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$name =$row['name'];
		$description   = $row['description'];
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
<h4 align="center">Edit Airline</h4>
<input type="text" name="hotel" placeholder="Enter Your Airline Name" class="form-control" value="<?php echo $name?>"/>
<br>
<textarea name="detail" id="editor1"><?php echo $description ?></textarea>
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
		$name = $_POST['hotel'];
		$detail = $_POST['detail'];
		$sql = mysql_query("UPDATE `airline` SET `name`='$name',`description`='$detail' where id = $edit_id");
		if($sql==true)
					{
				echo "<script>alert('updated'); location='list-airline.php' ;</script>";
				
				
				}
					else{
				echo "Error: " . $sql ."<br>"."your Airline not Updated ";
			}
		}

 ?>