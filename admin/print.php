<?php include("../includes/header.php");  include "mpdf/mpdf.php";include("session.php");
//include "header.php";
if(isset($_GET['print']))
{
	$print_id = $_GET['print'];
}
$sql = "SELECT * FROM record where m_id='$print_id'";
	$rs = mysql_query($sql) or die(mysql_error());
	$row =mysql_fetch_array($rs);
	$m_name= $row['m_name'];
	$m_org =  $row['m_org'];
	$m_trade =  $row['m_trade'];
	$m_date =  $row['m_date'];
	$m_ownership =  $row['m_ownership'];
	$m_add =  $row['m_add'];
	$m_tele =  $row['m_tele'];
	$m_mob =  $row['m_mob'];
	$m_ofmail =  $row['m_ofmail'];
	$m_permail =  $row['m_permail'];
	$m_web =  $row['m_web'];
	$m_branche =  $row['m_branche'];
	$m_iata =  $row['m_iata'];
	$m_turnover =  $row['m_turnover'];
	$m_pan =  $row['m_pan'];
	$m_taxno =  $row['m_taxno'];
	$m_orgid =  $row['m_orgid'];
	$m_wd =  $row['m_wd'];
	$m_first_destination =  $row['m_first_destination'];
	$m_second_destination =  $row['m_second_destination'];
	$m_no_group =  $row['m_no_group'];
	$m_tradew =  $row['m_tradew'];
	$m_fauthorized =  $row['m_fauthorized'];
	$m_sauth =  $row['m_sauth'];
	$m_linkedin =  $row['m_linkedin'];
	$m_reference =  $row['m_reference'];
	echo $m_reference;
$mpdf = new mPDF();
$mpdf->WriteHTML("<html><head><style>.cen{width:100%; font-size:14px;font-family: Times; border:1 ;  } th{text-align:left }</style></head><body >
<table class='cen' border='1' cellspacing='0' cellpadding='0'>
  <tr>
    <th colspan='2' ><center><img src='nima-logo-with-slogan.png' width='300px' /> </center></th>
  </tr>
  <tr border='1'>
    <th >NAME OF APPLICANT :</th>
    <td >$m_name</td>
  </tr>
  <tr>
    <th>NAME OF ORGANISATION :</th>
    <td >$m_org</td>
  </tr>
  <tr>
    <th >TRADE NAME :</th>
    <td >$m_trade</td>
  </tr>
  <tr>
    <th >DATE OF INCORPORATION :</th>
    <td >$m_date</td>
  </tr>
    <tr>
    <th >TYPE OF OWNERSHIP :</th>
    <td >$m_ownership</td>
  </tr>
  <tr>
    <th >DATE OF REG OFFICE ADDRESS :</th>
    <td >$m_add</td>
  </tr>
  <tr>
    <th >TELE NUMBERS:</th>
    <td >$m_tele</td>
  </tr>
  <tr>
    <th >MOBILE NUMBER  :</th>
    <td >$m_mob</td>
  </tr>
  <tr>
    <th >OFFICIAL EMAIL ID :</th>
    <td >$m_ofmail</td>
  </tr>
  <tr>
    <th >PERSONAL EMAIL ID:</th>
    <td >$m_permail</td>
  </tr>
  <tr>
    <th >WEBSITE :</th>
    <td >$m_web</td>
  </tr>
  <tr>
    <th >BRANCHES</th>
    <td >$m_branche</td>
  </tr>
  <tr>
    <th >IATA CODE:</th>
    <td >$m_iata</td>
  </tr>
  <tr>
    <th >SALES TURNOVER:</th>
    <td >$m_turnover</td>
  </tr>
  <tr>
    <th >PAN #OF ORG :</th>
    <td >$m_pan</td>
  </tr>
  <tr>
    <th >COMPANY SERVICE TAX NUMBER :</th>
    <td >$m_taxno</td>
  </tr>
  <tr>
    <th >ORG MICE :</th>
    <td >$m_orgid</td>
  </tr>
  <tr>
    <th >DESTINATIONS CURRENTLY USING AND PROMOTING</th>
    <td >$m_wd</td>
  </tr>
  <tr>
    <th >FIRST PREFERRED DESTINATION IN NEXT TWO YEARS</th>
    <td >$m_first_destination</td>
  </tr>
  <tr>
    <th >SECOND PREFERRED DESTINATION IN NEXT TWO YEARS</th>
    <td >$m_second_destination</td>
  </tr><tr>
    <th >NUMBER OF MICE GROUPS HANDLED PER ANNUM</th>
    <td >$m_no_group</td>
  </tr>
  <tr>
    <th >Is your Firm/Company member of any other trade association i.e. </div></th>
    <td >$m_tradew</td>
  </tr>
  <tr>
    <th >NAME OF FIRST AUTHORIZED :</th>
    <td >$m_fauthorized</td>
  </tr>
  <tr>
    <th >NAME OF SECOND AUTHORIZED</th>
    <td >$m_sauth</td>
  </tr>
  <tr>
    <th >LINKEDIN PROFILE </th>
    <td >$m_linkedin</td>
  </tr>
  <tr>
    <th >ANY REFERENCE</th>
    <td >$m_reference</td>
  </tr>
</table>
</body></html>");
$mpdf->Output();
exit;
$sql
?>
  