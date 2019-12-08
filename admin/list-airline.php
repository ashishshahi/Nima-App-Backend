<?php include "../includes/db-connect.php"; include("session.php");;
	$SQL = "SELECT * FROM airline ORDER BY id ASC";
	$rs = mysql_query($SQL) or die(mysql_error());
		while ($row = mysql_fetch_array($rs)){
		$id = $row['id'];
		$airline = $row['airline'];
		$name = $row['name'];
		$description = $row['description'];
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
	  <td ><label class="ba">Airline</label></td>
	  <td ><label class="ba">Title</label></td>
	  <td ><label class="ba">Description</label></td>
     <td ><label class="ba">Action</label></td>
   </tr>
  </thead>
   <?php
   $SQL = "SELECT * FROM airline ORDER BY id ASC";
	$rs = mysql_query($SQL) or die(mysql_error());
while ($row = mysql_fetch_array($rs)){
		$id = $row['id'];
		$airline = $row['airline'];
		$name = $row['name'];
		$description = $row['description'];
?>	
  <tbody>
   <tr>
     <td ><?php echo $id ?></td>
     <td ><?php echo $airline ?></td>
	 <td> <?php echo $name ?></td>
	 <td ><?php echo substr($description,0,50) ?></td>
     <td ><a style="text-decoration:none" href="delete-airline.php?delete=<?php echo $id;?>"><button type='button' class='btn btn-danger'>Delete</button></a>
<a style="text-decoration:none" href="edit-airline.php?edit=<?php echo $id;?>" ><button type='button' class='btn btn-primary'>Edit</button></a> 
<a style="text-decoration:none" href="view-airline.php?view=<?php echo $id;?>"><button type='button' class='btn btn-success'>view</button></a>
	 </td>
   </tr><?php } ?></tbody>
    </table>
</div>
 </body>
 </html>