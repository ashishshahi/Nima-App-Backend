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
$data=mysql_query("select * from event where id='$view_id'");
		    $col=mysql_num_fields($data);
			$cf=mysql_fetch_field($data);
			$rec=mysql_fetch_row($data);

echo"
		<div class='container'>
		<style>td{border:1px dashed #ddd;}th{border:1px dashed #ddd;}</style>
		<table width='100%'  class='table table-hover'>
 			 <tr>
    			<td>TO</td>
    			<td>$rec[1]</td>
    			<td>FROM</td>
    			<td>$rec[2]</td>
  			</tr>
		  <tr>
			<td>PLACE</td><td>$rec[3]</td>
			<td>TYPE</td><td>$rec[6]</td>
		  </tr>
		  <tr>
		    <td colspan='2'>TITLE</td>
		    <td colspan='2'>$rec[4]</td>
	      </tr>
		  <tr>
		    <td colspan='4'>$rec[5]</td>
	      </tr>
		</table>
		</div>";
?>
</body>
</html>