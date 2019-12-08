<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<?php  
include '../includes/db-connect.php';
//$deleterecords = "TRUNCATE TABLE record"; //empty the table of its current records
//mysql_query($deleterecords);
if (isset($_POST['submit'])) {

    if (is_uploaded_file($_FILES['filename']['tmp_name'])) {
        echo "<h3 class='form-control'>" . "File ". $_FILES['filename']['name'] ." uploaded 
 successfully." . "</h3>";
        echo "<h4 class='form-control'>Displaying contents:</h4>";
        readfile($_FILES['filename']['tmp_name']);
		
    

    //Import uploaded file to Database
    $handle = fopen($_FILES['filename']['tmp_name'], "r");

    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $import="INSERT into record (m_name, m_org, m_trade, m_date, m_ownership, m_add, m_tele, m_mob, m_ofmail, m_permail, m_web, m_branche, m_iata, m_turnover, m_pan, m_taxno, m_orgid, m_wd, m_first_destination, m_second_destination, m_no_group, m_tradew, m_fauthorized, m_sauth, m_linkedin, m_reference)		values('$data[0]','$data[1]','$data[2]','$data[3]','$data[4]','$data[5]','$data[6]','$data[7]','$data[8]','$data[9]','$data[10]','$data[11]','$data[12]','$data[13]','$data[14]','$data[15]','$data[16]','$data[17]','$data[18]','$data[19]','$data[20]','$data[21]','$data[22]','$data[23]','$data[24]','$data[25]')";

        mysql_query($import) or die(mysql_error());
    }
	}
    fclose($handle);
    print "<label class='btn badge'>Import done</label>";
	echo "</br>\n \n";
		echo "<button  class='btn btn-info '><a href='index.php' style='text-decoration:none'>Back</a></button>";

//view upload form
} else {

    print "<form enctype='multipart/form-data' action='import.php' method='post' class='form-group'>";
	print "<div align='center'style='margin-top:25%'>";
	print "<table width='30%' border='1' cellspacing='0' cellpadding='0' class='table table-hover'>";
	print "<tr><th colspan='2'><div align='center'>
        <h3>IMPORT CSV FILE </h3>
      </div></th> </tr>";
	  print "<tr>";
	  print "<th ><input type='file' name='filename' class='custom-file-input' accept='.csv,.doc,.txt'id='file'/></th>";
	  print "<th ><input type='submit' name='submit' value='UPLOAD' class='btn btn-primary' /></th>";
  	  print "</tr></table></div></form>";

}


?>