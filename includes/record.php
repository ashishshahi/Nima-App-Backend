<?php
include ("db-connect.php");
	if(isset($_POST['submit']))
	{
	$m_name=$_POST['m_name'];
	$m_org = $_POST['m_org'];
	$m_trade = $_POST['m_trade'];
	$m_date = $_POST['m_date'];
	$m_ownership = $_POST['m_ownership'];
	$m_add = $_POST['m_add'];
	$m_tele = $_POST['m_tele'];
	$m_mob = $_POST['m_mob'];
	$m_ofmail = $_POST['m_ofmail'];
	$m_permail = $_POST['m_permail'];
	$m_web = $_POST['m_web'];
	$m_branche = $_POST['m_branche'];
	$m_iata = $_POST['m_iata'];
	$m_turnover = $_POST['m_turnover'];
	$m_pan = $_POST['m_pan'];
	$m_taxno = $_POST['m_taxno'];
	$m_orgid = $_POST['m_orgid'];
	$m_wd = $_POST['m_wd'];
	$m_first_destination = $_POST['m_first_destination'];
	$m_second_destination = $_POST['m_second_destination'];
	$m_no_group = $_POST['m_no_group'];
	$m_tradew = $_POST['m_tradew'];
	$m_fauthorized = $_POST['m_fauthorized'];
	$m_sauth = $_POST['m_sauth'];
	$m_linkedin = $_POST['m_linkedin'];
	$m_reference = $_POST['m_reference'];
	$sql = mysql_query("INSERT INTO `record` (`m_id`,`m_name`, `m_org`, `m_trade`, `m_date`, `m_ownership`, `m_add`, `m_tele`, `m_mob`, `m_ofmail`, `m_permail`, `m_web`, `m_branche`, `m_iata`, `m_turnover`, `m_pan`, `m_taxno`, `m_orgid`, `m_wd`, `m_first_destination`, `m_second_destination`, `m_no_group`, `m_tradew`, `m_fauthorized`, `m_sauth`, `m_linkedin`, `m_reference`) VALUES ('','$m_name', '$m_org', '$m_trade', '$m_date', '$m_ownership', '$m_add', '$m_tele', '$m_mob', '$m_ofmail', '$m_permail', '$m_web', '$m_branche', '$m_iata', '$m_turnover', '$m_pan', '$m_taxno', '$m_orgid', '$m_wd', '$m_first_destination', '$m_second_destination', '$m_no_group', '$m_tradew', '$m_fauthorized', '$m_sauth', '$m_linkedin', '$m_reference')");
	 
	if($sql==true)
	{
		echo "Data save Sucessfully";
		
		
	}
	else{
		echo "Error: " . $sql ."<br>"."your data not save ";
	}
	}
?>
