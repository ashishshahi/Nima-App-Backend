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
$data=mysql_query("select * from tourism where id='$view_id'");
		    $col=mysql_num_fields($data);
			$cf=mysql_fetch_field($data);
			$rec=mysql_fetch_row($data);

echo"
		<div class='container'>
		<table  id ='table' class='table table-hover'>
		  <tr>
			<td colspan='2'><h3>Tourism Record</h3></td>
		  </tr>
		  <tr>
			<td ><h4>Country : <b>$rec[1]<b></h4></td>
			<td ><h4>SubCountry : <b>$rec[2]<b></h4></td>
		  </tr>
		  <tr>
			<td colspan='2'>$rec[3]</td>
		  </tr>
		</table></div>";
?>
</body>
</html>