<?php include "../includes/db-connect.php"; include("session.php");;
	$SQL = "SELECT * FROM event ORDER BY id ASC";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$id = $row['id'];
		$eto = $row['eto'];
		$efrom = $row['efrom'];
		$place = $row['place'];
		$title = $row['title'];
		$description = $row['description'];
		$type = $row['type'];
		}

 ?>

 <!DOCTYPE html>
 <html><head>
  <script src="plugins/ckeditor/ckeditor.js"></script>
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
  <style>
.ba{
border-radius:1px; background-color:#f3f3f3;line-height:0px; text-transform:uppercase; padding:0px;color:#6d6d6d;font-size:12px;
}
.container td{
	border:1px dashed #ddd;
}
</style>
</head>
<body>
<div class="container"><?php  include "head.php";?></div>
<div class="container">
<table  align="center" class="table table-strid table-hover ">
    <thead class="ba">
   <tr>
     <td ><label class="ba">S.No</label></td>
	  <td ><label class="ba">TO</label></td>
	  <td ><label class="ba">FROM</label></td>
	  <td ><label class="ba">PLACE</label></td>
	  <td ><label class="ba">TITLE</label></td>
	  <td ><label class="ba">DESCRIPTION</label></td>
	  <td ><label class="ba">TYPE</label></td>
     <td ><label class="ba">Action</label></td>
   </tr>
  </thead>
   <?php
   $SQL = "SELECT * FROM event ORDER BY id ASC";
	$rs = mysql_query($SQL) or die(mysql_error());
while ($row = mysql_fetch_array($rs)){
		$id = $row['id'];
		$eto = $row['eto'];
		$efrom = $row['efrom'];
		$place = $row['place'];
		$title = $row['title'];
		$description = $row['description'];
		$type = $row['type'];
?>	
  <tbody>
   <tr>
     <td ><?php echo $id ?></td>
     <td ><?php echo $eto ?></td>
	 <td> <?php echo $efrom ?></td>
	  <td> <?php echo $place ?></td>
	   <td> <?php echo $title ?></td>
	 <td ><?php echo substr($description,0,50) ?></td>
	  <td> <?php echo $type ?></td>
     <td ><a style="text-decoration:none" href="delete-event.php?delete=<?php echo $id;?>"><button type='button' class='btn btn-danger'>Delete</button></a>
<a style="text-decoration:none" href="edit-event.php?edit=<?php echo $id;?>" ><button type='button' class='btn btn-primary'>Edit</button></a> 
<a style="text-decoration:none" href="view-event.php?view=<?php echo $id;?>"><button type='button' class='btn btn-success'>view</button></a>
	 </td>
   </tr><?php } ?></tbody>
    </table>
</div>
 </body>
 </html>