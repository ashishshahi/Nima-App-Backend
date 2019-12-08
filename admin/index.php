<!--- page Auto referesh code-->
<?php $page = $_SERVER['PHP_SELF'];
 		$sec = "500000";
  ?>
 <?php include("../includes/header.php");
		include("session.php");
	$SQL = "SELECT * FROM record ORDER BY m_id";
	$rs = mysql_query($SQL) or die(mysql_error());
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="<?php echo $sec?>;URL="http://localhost/memberrecord/admin/index.php"'<?php echo $page?>;" />
<title>Admin</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<style>
.badge{
border-radius:1px; background-color:#0a96da;line-height:10px; text-transform:uppercase; padding:10px;
}
.container td{
	border:1px dashed #ddd;
}
</style>

</head>
<script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script> 
<script type="text/javascript" src="js/jquery-latest.js"></script> 
<body>

<div class="container">
<?php include 'head.php'; ?>
</div>

</body>
</html>