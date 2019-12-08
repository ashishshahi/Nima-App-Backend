<?php include "../includes/db-connect.php"; include("session.php");	?>
<div class='container'> <?php include 'head.php'; ?></div>
<?php
				$view_id = $_GET['view'];
			$data=mysql_query("select * from record where m_id='$view_id'");
		    $col=mysql_num_fields($data);
			$cf=mysql_fetch_field($data);
			$rec=mysql_fetch_row($data);
	
			
		 echo "<div class ='container'><table class='table table-hover' style=' margin:auto; font-family:Arial, Helvetica, sans-serif; font-size:14px;'>
		<style>td{border:1px dashed #ddd;}th{border:1px dashed #ddd;}</style>
		 <form method='post' enctype='multipart/form-data'>
       <div class='container form-group' >
         
        <tr><td>NAME OF APPLICANT </td> <td>$rec[1]</td>
        <td>NAME OF ORGANISATION </td> <td>$rec[2]</td></tr>
		
       <tr><td>TRADE NAME </td> <td>$rec[3]</td>
        <td>Date of Incorporation </td> <td>$rec[4]</td></tr>   
		   
        <tr><td>TYPE OF OWNERSHIP </td> <td>$rec[5]</td> 
          <td>REG OFFICE ADDRESS</td> <td>$rec[6]</td></tr>
		  
          <tr><td>TELE NUMBERS</td> <td>$rec[7]</td>
  		<td>MOBILE NUMBERS </td> <td>$rec[8]</td></tr>  
		
             <tr><td>OFFICIAL EMAIL ID </td> <td>$rec[9]</td>
            <td>PERSONAL EMAIL ID</td> <td>$rec[10]</td></tr>
			
              <tr><td>WEBSITE </td> <td>$rec[11]</td>             
			  <td>BRANCHES (if any)</td> <td>$rec[12]</td></tr> 
			  
              <tr><td>IATA Code</td> <td>$rec[13]</td>
        <td>SALES TURNOVER</td> <td>$rec[14]</tr>
		
        <tr><td>PAN #of ORG </td> <td>$rec[15]</td>
         <td>COMPANY SERVICE TAX NUMBER </td> <td>$rec[16]KG</td></tr>
		 
		 
		 <tr><td>ORG MICE  </td><td>$rec[17]</td>
		 <td>DESTINATIONS CURRENTLY USING AND PROMOTING</td><td>$rec[18]</td>
		 </tr>
         <tr><td>FIRST PREFERRED DESTINATION IN NEXT TWO YEARS </td><td>$rec[19]</td>
		 <td>SECOND PREFERRED DESTINATION IN NEXT TWO YEARS </td><td>$rec[20]</td>
		 </tr>
		 <tr><td>NUMBER OF MICE GROUPS HANDLED PER ANNUM </td><td>$rec[21]</td>
		 <td>Is your Firm/Company member of any other trade association i.e. </td><td>$rec[22]</td>
		 </tr>
         <tr><td>NAME OF FIRST AUTHORIZED REP FROM YOUR ORG </td> <td>$rec[23]</td>
          			<td>NAME OF Second AUTHORIZED REP FROM YOUR ORG</td><td>$rec[24]</td></tr>
		<tr><td>LinkedIn Profile  </td> <td>$rec[25]</td>
		<td>Any references  </td><td>$rec[26]</td></tr>
         <tr><td class='form-control'><a href='list-member.php' class='text-danger'>Back</td></a></tr>
            </form>
                                                            
      </table></div>";
			
	  ?>