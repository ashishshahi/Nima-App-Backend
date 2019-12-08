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
$data=mysql_query("select * from hotel where id='$view_id'");
		    $col=mysql_num_fields($data);
			$cf=mysql_fetch_field($data);
			$rec=mysql_fetch_row($data);

echo"
		<div class='container'>
		<br>
		<style>td{border:1px dashed #ddd;}th{border:1px dashed #ddd;}#a{textdecoration:none;color:black;}</style>
		<table width='100%' border='1'>
  <tr>
    <td><div align='center'>Hotel Name </div></td>
    <td><div align='center'>$rec[1]</div></td>
    <td><div align='center'>Hotel Title </div></td>
    <td><div align='center'>$rec[2]</div></td>
  </tr>
  <tr>
    <td colspan='4' id='a'><div align='center' >$rec[3]</div></td>
  </tr>
</table></div>";
?>
</body>
</html>