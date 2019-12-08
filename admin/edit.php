<?php include("../includes/db-connect.php"); include "head.php"; include("session.php");?> 
<style>
.badge{
 color:#000000; background-color:#FFFFFF; font-family:Arial, Helvetica, sans-serif; font-size:12px;
}
</style>
 <?php 
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
	$edit_id = $_GET['edit'];
	$data=mysql_query("UPDATE `record` SET 				`m_name`='$m_name',`m_org`='$m_org',`m_trade`='$m_trade',`m_date`='$m_date',`m_ownership`='$m_ownership',`m_add`='$m_add',`m_tele`='$m_tele',`m_mob`='$m_mob',`m_ofmail`='$m_ofmail',`m_permail`='$m_permail',`m_web`='$m_web',`m_branche`='$m_branche',`m_iata`='$m_iata',`m_turnover`='$m_turnover',`m_pan`='$m_pan',`m_taxno`='$m_taxno', `m_orgid`='$m_orgid',`m_wd`='$m_wd',`m_first_destination`='$m_first_destination',`m_second_destination`='$m_second_destination',`m_no_group`='$m_no_group',`m_tradew`='$m_tradew',`m_fauthorized`='$m_fauthorized',`m_sauth`='$m_sauth',`m_linkedin`='$m_linkedin',`m_reference`='$m_reference' WHERE m_id='$edit_id'");
	
			if($data==true)
			{
				echo "<script>confirm('updated'); location='list-member.php' ;</script>";
			}
			else
			{
				echo "<script>confirm('try again')</script>";
			}
		}
		?>
		
		<?php
		$edit_id = $_GET['edit'];
		$d=mysql_query("select * from record where m_id=$edit_id"); 
		$rec=mysql_fetch_row($d);
	//my table
	 echo "<table align='center' class='table table-hover' >
 			<form method='post' action=''  name='member'>
			<div class='container'>
<div class='form-group'>
		<div class='row'>
					<div class='col-sm-6'>
					<label class='badge'>Name Of Applicant(*):</label>
					<input type='text' name='m_name' class='form-control' placeholder='Enter Your Full Name' value='$rec[1]' required>
					</div>
					<div class='col-sm-6'>
					<label class='badge'>Name Of Organisation(*):</label>
					<input type='text' name='m_org' class='form-control' plceholder='Full Name Of Organisation' value='$rec[2]' required>
					</div>
		</div>
		<div class='row'>
		<div class='col-sm-6'>
				<label class='badge'>Trade Name:</label>
					<input type='text' name='m_trade' class='form-control' placeholder='In case the name of Business is different than the Organisation' value='$rec[3]'>
		</div>
		<div class='col-sm-6'>
				<label class='badge'>Date of Incorporation(*) :</label>
				<input type='date' class='form-control' name='m_date' required id='m_date' value=$rec[4]> 
		</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>TYPE OF OWNERSHIP(*) :</label>
					<select name='m_ownership' class='form-control'>
						<option>$rec[5]</option>
						<option>Sole Prop</option>
						<option>Partnership</option>
						<option>PVT LTD</option>
						<option>LLP</option>
						<option>Ltd</option>
					</select>
			</div>
			<div class='col-sm-6'>
			<label class='badge'>REG OFFICE ADDRESS(*) :</label>
			<textarea class='form-control'  name='m_add' plceholder='Registered Office Address' required id='m_add' val>$rec[6]</textarea>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>TELE NUMBERS(*) :</label>
					<input type='number' name='m_tele' class='form-control' placeholder='TELE NUMBERS'  value='$rec[7]' required>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>MOBILE NUMBERS(*) :</label>
					<input type='number' name='m_mob' class='form-control' placeholder='+91 91992367XX'  value='$rec[8]' required>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>OFFICIAL EMAIL ID (*) :</label>
					<input type='email' name='m_ofmail' class='form-control' placeholder='xyz@xyz.com'  value='$rec[9]'required >
			</div>
			<div class='col-sm-6'>
					<label class='badge'>PERSONAL EMAIL ID :</label>
					<input type='email' name='m_permail' class='form-control' placeholder='xyz@xyz.com'  value='$rec[10]' required >
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>WEBSITE :</label>
					<input type='url' name='m_web' class='form-control' placeholder='http://xyz.com'  value='$rec[11]' required>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>BRANCHES (if any) :</label>
					<input type='text' name='m_branche' class='form-control' placeholder='Give Location city only'  value='$rec[12]'required>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>IATA Code :</label>
					<input type='text' name='m_iata' class='form-control' placeholder='Accreditation Code'  value='$rec[13]' >
			</div>
			<div class='col-sm-6'>
					<label class='badge'>SALES TURNOVER (*) :</label>
					<input type='text' name='m_turnover' class='form-control' placeholder='(Previous Year)'  value='$rec[14]'>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>PAN #of ORG :</label>
					<input type='text' name='m_pan' class='form-control' placeholder='Company Income Tax PAN'  value='$rec[15]' >
			</div>
			<div class='col-sm-6'>
					<label class='badge'>COMPANY SERVICE TAX NUMBER(*) :</label>
					<input type='text' name='m_taxno' class='form-control' placeholder='Company Service Tax Number'  value='$rec[16]' required>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>DOES YOUR COMPANY ORG MICE? :</label>
					<div class='form-group' style='height:80px; overflow:scroll'>
					
						<input type='text' name='m_orgid' value='$rec[17]'></br>
					</div>
								</div>
			<div class='col-sm-6'>
					<label class='badge'>DESTINATIONS CURRENTLY USING AND PROMOTING :</label>
					<div class='form-group' style='height:80px; overflow:scroll'>
						<input type='text' name='m_wd' value='$rec[18]'></br>
					</div>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>FIRST PREFERRED DESTINATION IN NEXT TWO YEARS (*) :</label>
					<textarea name='m_first_destination' class='form-control' required>$rec[19]</textarea>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>SECOND PREFERRED DESTINATION IN NEXT TWO YEARS (*) :</label>
					<textarea name='m_second_destination' class='form-control'  required>$rec[20]</textarea>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>NUMBER OF MICE GROUPS HANDLED PER ANNUM(*) :</label>
					<textarea name='m_no_group' class='form-control' required>$rec[21]</textarea>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>Is your Firm/Company member of any other trade association i.e. (*):</label>
					<textarea name='m_tradew' class='form-control'  required>$rec[22]</textarea>
			</div>
		</div>
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>NAME OF FIRST AUTHORIZED REP FROM YOUR ORG (*) :<br><span>(mention Name/Details/Designation/tele/email)</span></label>
					<textarea name='m_fauthorized' class='form-control' placeholder='mention Name/Details/Designation/tele/email' required>$rec[23]</textarea>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>NAME OF Second AUTHORIZED REP FROM YOUR ORG (*) :</label>
					<textarea name='m_sauth' class='form-control' placeholder='mention Name/Details/Designation/tele/email' required>$rec[24]</textarea>
			</div>
		</div>
		
		<div class='row'>
			<div class='col-sm-6'>
					<label class='badge'>LinkedIn Profile :</label>
					<input type='url' name='m_linkedin' class='form-control' placeholder='paste the link please' value='$rec[25]'>
			</div>
			<div class='col-sm-6'>
					<label class='badge'>Any references :</br><span> 
(Be it Airline/Hotel chain/Convention Center/Supplier you have worked with , along with his email and tele)</span></label>
					<textarea name='m_reference' class='form-control'> $rec[26]</textarea>
			</div>
		</div>
		
		<div class='row'>
			<div class='col-sm-10'>
				<input type='submit' name='submit' value='submit' class='btn btn-info'>
				
			</div>
		</div>
</div></div>
</form>
  </table>";
	 ?>
</div>