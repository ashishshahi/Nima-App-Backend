 <?php include("../includes/header.php");
 include("session.php");
	$SQL = "SELECT * FROM record ORDER BY m_id";
	$rs = mysql_query($SQL) or die(mysql_error());
?>
<!DOCTYPE html>
<html>
<head>
<title>List Of Member</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<style>
.ba{
border-radius:1px; background-color:#f3f3f3;line-height:0px; text-transform:uppercase; padding:0px;color:#6d6d6d;font-size:12px;
}
.container{padding-right: 0px; padding-left: 0px; margin-right: auto;
    margin-left: auto;}
.container td{
	border:1px dashed #ddd;
}
.table{font-size:12px;}

#btn {font-size:12px;line-height: 1;}
</style>
<SCRIPT TYPE="text/javascript">
  function popup(mylink, windowname) { 
    if (! window.focus)return true;
    var href;
    if (typeof(mylink) == 'string') href=mylink;
    else href=mylink.href; 
    window.open(href, windowname, 'width=500,height=400,scrollbars=yes'); 
    return false; 
  }
</SCRIPT>
</head>
<script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script> 
<script type="text/javascript" src="js/jquery-latest.js"></script> 
<body>
<div class="container">
<div class="row">
<?php include 'head.php'; ?>
</div>
</div>
 <div class="container">
 <table width="90%" align="center" class="table table-strid table-hover ">
    <thead class="ba">
   <tr>
     <td ><label class="ba">Name</label></td>
     <td ><label class="ba">Organisation Name</label></td>
     <td ><label class="ba">Mobile</label></td>
     <td><label class="ba">Office Email</label></td>
	 <td><label class="ba">Username</label></td>
     <td ><label class="ba">Action</label></td>
   </tr>
  </thead>
   <?php
while ($row = mysql_fetch_array($rs)){
		$m_id     = $row['m_id'];
		$m_name   = $row['m_name'];
		$m_org = $row['m_org'];
		$m_mob = $row['m_mob'];
		$m_ofmail =$row['m_ofmail'];
		$username =$row['username'];
		$m_add =$row['m_add'];
		
?>	
  <tbody>
   <tr>
     <td ><?php echo $m_name ?></td>
     <td ><?php echo $m_org ?></td>
     <td ><?php echo $m_mob ?></td>
     <td><?php echo $m_ofmail ?></td>
	 <td><?php echo $username ?></td>
     <td ><a style="text-decoration:none" href="delete.php?delete=<?php echo $m_id;?>"><button type='button' class='btn btn-danger' id='btn'>Delete</button></a>
	 		<a style="text-decoration:none" href="edit.php?edit=<?php echo $m_id;?>"><button type='button' class='btn btn-primary' id='btn'>Edit</button></a> 
			<a style="text-decoration:none" href="view.php?view=<?php echo $m_id;?>" ><button type='button' class='btn btn-success' id='btn'>View</button></a>
			<a style="text-decoration:none" href="print.php?print=<?php echo $m_id;?>" target="_blank" ><button type='button' class='btn btn-info' id='btn'>Print</button></a>
			<a style="text-decoration:none" href="adduser.php?user=<?php echo $m_id;?>" onClick="return popup(this, 'stevie')" ><button type='button' class='btn btn-warning'id='btn'>Add User</button></a>
	 </td>
   </tr><?php } ?></tbody>
    </table>
	</div>
</body>
</html>