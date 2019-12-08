<?php 
###Function For Dynamic Drop down list
function ownership($table,$col_id,$col_value,$sel=0)
{
	$SQL = "SELECT * FROM $table order by $col_value";
	$rs = mysql_query($SQL) or die(mysql_error());
	$option_list = "<option value=0>Please Choose Any One</option>";
	while($data= mysql_fetch_assoc($rs))
	{
		$option_list.="<option value='$data[$col_id]'>$data[$col_value]</option>";
	}
	return $option_list;
}
#Function For Dynamic Checkbox
function check($table,$col_id,$col_value,$name,$sel=0)
{
	$SQL="select * from $table order by $col_value";
	$rs=mysql_query($SQL) or die(mysql_error());
	$check_list="";
	while($data=mysql_fetch_assoc($rs))
	{
	$check_list.= "<input type='checkbox' name='$name' value='$data[$col_id]'>$data[$col_value]</br>";
	}
	return $check_list;
}


?>
