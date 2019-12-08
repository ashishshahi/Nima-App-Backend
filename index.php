<?php include("includes/header.php"); ?>
<!Doctype html>
<html>
<head>
<title>Mebership Form</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<script src="js/jsself.js" type="text/javascript"></script>
<style>
.badge{
color:#000000; background-color:#FFFFFF;font-family:Arial, Helvetica, sans-serif; font-size:12px;
}
</style>
</head>
<body>
<div class="container">
<form method="post" action=""  name="member" onSubmit="return valid_member(this);">
<div class="form-group">
		<div class="row">
					<div class="col-sm-6">
					<label class="badge">Name Of Applicant(*):</label>
					<input type="text" name="m_name" class="form-control" placeholder="Enter Your Full Name" required>
					</div>
					<div class="col-sm-6">
					<label class="badge">Name Of Organisation(*):</label>
					<input type="text" name="m_org" class="form-control" plceholder="Full Name Of Organisation" required>
					</div>
		</div>
		<div class="row">
		<div class="col-sm-6">
				<label class="badge">Trade Name:</label>
					<input type="text" name="m_trade" class="form-control" placeholder="In case the name of Business is different than the Organisation">
		</div>
		<div class="col-sm-6">
				<label class="badge">Date of Incorporation(*) :</label>
				<input type="date" class="form-control" name="m_date" required id="m_date"> 
		</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">TYPE OF OWNERSHIP(*) :</label>
					<select name="m_ownership" class="form-control" required>
						<option><?php echo ownership("ownership","o_name","o_name");?></option>
					</select>
			</div>
			<div class="col-sm-6">
			<label class="badge">REG OFFICE ADDRESS(*) :</label>
			<textarea class="form-control"  name="m_add" plceholder="Registered Office Address" required id="m_add"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">TELE NUMBERS(*) :</label>
					<input type="number" name="m_tele" class="form-control" placeholder="TELE NUMBERS" required>
			</div>
			<div class="col-sm-6">
					<label class="badge">MOBILE NUMBERS(*) :</label>
					<input type="number" name="m_mob" class="form-control" placeholder="+91 91992367XX" required>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">OFFICIAL EMAIL ID (*) :</label>
					<input type="email" name="m_ofmail" class="form-control" placeholder="xyz@xyz.com" required id="m_ofmail">
			</div>
			<div class="col-sm-6">
					<label class="badge">PERSONAL EMAIL ID :</label>
					<input type="email" name="m_permail" class="form-control" placeholder="xyz@xyz.com" id="m_permail" >
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">WEBSITE :</label>
					<input type="url" name="m_web" class="form-control" placeholder="http://xyz.com" required>
			</div>
			<div class="col-sm-6">
					<label class="badge">BRANCHES (if any) :</label>
					<input type="text" name="m_branche" class="form-control" placeholder="Give Location city only" required>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">IATA Code :</label>
					<input type="text" name="m_iata" class="form-control" placeholder="Accreditation Code" id="m_iata" >
			</div>
			<div class="col-sm-6">
					<label class="badge">SALES TURNOVER (*) :</label>
					<input type="text" name="m_turnover" class="form-control" placeholder="(Previous Year)" >
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">PAN #of ORG :</label>
					<input type="text" name="m_pan" class="form-control" placeholder="Company Income Tax PAN" >
			</div>
			<div class="col-sm-6">
					<label class="badge">COMPANY SERVICE TAX NUMBER(*) :</label>
					<input type="text" name="m_taxno" class="form-control" placeholder="Company Service Tax Number" required>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">DOES YOUR COMPANY ORG MICE? :</label>
					<div class="form-group" style="height:80px; overflow:scroll">
					
						<?php echo check("organisation","org_id","org_name","m_orgid"); ?>
					</div>
								</div>
			<div class="col-sm-6">
					<label class="badge">DESTINATIONS CURRENTLY USING AND PROMOTING :</label>
					<div class="form-group" style="height:80px; overflow:scroll">
						<?php echo check("working_destination","wd_name","wd_name","m_wd"); ?>
					</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">FIRST PREFERRED DESTINATION IN NEXT TWO YEARS(*) :<br></label>
					<textarea name="m_first_destination" class="form-control" placeholder="Mention City Followed By Country" required></textarea>
			</div>
			<div class="col-sm-6">
					<label class="badge">SECOND PREFERRED DESTINATION IN NEXT TWO YEARS(*) :</label>
					<textarea name="m_second_destination" class="form-control" placeholder="Mention City Followed By Country" required></textarea>
			</div>
		</div>
		<div class="row">
		<div class="col-sm-6">
		<div class="form-group">
		<label class="badge">NUMBER OF MICE GROUPS HANDLED PER ANNUM(*):</label>
		<select name="m_no_group" class="form-control" required="">
		<option selected="" disabled="">Select </option>
		<option>1-5</option>
		<option>5-11</option>
		<option>11-25</option>
		<option>25+</option>
		</select>
		</div></div>
		
		<div class="col-sm-6">
		<label class="badge">Is your Firm/Company member of any other trade association i.e. (*):</label>
		</div>
		<div class="col-sm-6 form-group">
		<input type="checkbox" name="m_tradew[]" value="iata">IATA
		<input type="checkbox" name="m_tradew[]" value="pata">PATA
		<input type="checkbox" name="m_tradew[]" value="mpi">MPI
		<input type="checkbox" name="m_tradew[]" value="otoai">OTOAI
		<input type="checkbox" name="m_tradew[]" value="taai">TAAI
		<input type="checkbox" name="m_tradew[]" value="pcma">PCMA
		<input type="checkbox" name="m_tradew[]" value="iaapco">IAAPCO
		<input type="checkbox" name="m_tradew[]" value="other">OTHER
		</div>
	</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">NAME OF FIRST AUTHORIZED REP FROM YOUR ORG (*) :<br><span>(mention Name/Details/Designation/tele/email)</span></label>
					<textarea name="m_fauthorized" class="form-control" placeholder="mention Name/Details/Designation/tele/email" required></textarea>
			</div>
			<div class="col-sm-6">
					<label class="badge">NAME OF Second AUTHORIZED REP FROM YOUR ORG (*) :</label>
					<textarea name="m_sauth" class="form-control" placeholder="mention Name/Details/Designation/tele/email" required></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
					<label class="badge">LinkedIn Profile :</label>
					<input type="url" name="m_linkedin" class="form-control" placeholder="paste the link please" >
			</div>
			<div class="col-sm-6">
					<label class="badge">Any references :</br><span> 
(Be it Airline/Hotel chain/Convention Center/Supplier you have worked with , along with his email and tele#)</span></label>
					<textarea name="m_reference" class="form-control"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				We hereby certify that the information given above is true, correct and accurate to the best of our knowledge and belief and that no information that may be relevant to the above questions has been suppressed or withheld. The form will be reviewed by a committee for enrolling into NIMA. Selection into NIMA is not guaranteed after submission of this form. Subject to approval only. Decision of the selection committee will be final without any obligation (*)</br>
				<p class="text-danger">Agree to terms and conditions?</p>
				YES
				<input type="checkbox" name="terms">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-10">
				<input type="submit" name="submit" value="submit" class="btn btn-info">
				
			</div>
		</div>
</div>
</form>
</div>
</body>
</html>
