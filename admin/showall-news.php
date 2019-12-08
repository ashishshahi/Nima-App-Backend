 <!DOCTYPE html>
 <html><head>
  <script src="plugins/ckeditor/ckeditor.js"></script>
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
  <style type="text/css">
#table {
	text-align: center;
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
	width:100%; border:dashed 2px #ddd; cellpadding:0; cellspacing:0;
}
</style>
</head>
<body>
<div class="container"><?php  include "head.php";?></div>

<?php include "../includes/db-connect.php";include("session.php");
$view_id = $_GET['view'];
$data=mysql_query("select * from news where id='$view_id'");
		    $col=mysql_num_fields($data);
			$cf=mysql_fetch_field($data);
			$rec=mysql_fetch_row($data);

echo"
		<div class='container'>
		<table  id ='table' class='table table-hover'>
		  <tr>
			<td colspan='2'><h3>NEWS</h3></td>
		  </tr>
		  <tr>
			<td colspan='2'><h4>NEWS TITLE : <b>$rec[1]<b></h4></td>
		  </tr>
		  <tr>
			<td colspan='2'> <img src='$rec[2]' alt='image' width='300px'/></td>
		</tr>
		<tr>
			<td colspan='2'>$rec[3]</td>
		</tr>
		  </tr>
		  <tr>
		  <td>Created At : $rec[4]</td>
		  <td>Updated At : $rec[5]</td>
		  </tr>
		</table></div>";
?>
</body>
</html>