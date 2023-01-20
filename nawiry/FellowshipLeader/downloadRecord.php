<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';

?>
        <table border="1">
        <thead>
            <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Other Name</th>
            <th>Phone No</th>
            <th>House Fellowship</th>
            <th>Residence</th>
            <th>Month</th>
            <th>Week</th>
            <th>Status</th>
            <th>Date</th>
            </tr>
        </thead>

<?php 
$filename="Attendance list";
$dateTaken = date("Y-m-d");

$cnt=1;			
$ret = mysqli_query($conn,"SELECT tblattendance.Id,tblattendance.status,tblattendance.dateTimeTaken,tblhse.hseFellowshipName,
        tblhsearms.hseArmName,tblsessionmonth.sessionName,tblsessionmonth.monthId,tblweek.weekName,
        tblmembers.firstName,tblmembers.lastName,tblmembers.otherName,tblmembers.phoneNumber
        FROM tblattendance
        INNER JOIN tblhse ON tblhse.Id = tblattendance.hseId
        INNER JOIN tblhsearms ON tblhsearms.Id = tblattendance.hseArmId
        INNER JOIN tblsessionmonth ON tblsessionmonth.Id = tblattendance.sessionhseId
        INNER JOIN tblweek ON tblweek.Id = tblsessionmonth.monthId
        INNER JOIN tblmembers ON tblmembers.phoneNumber = tblattendance.phoneNumber
        where tblattendance.dateTimeTaken = '$dateTaken' and tblattendance.hseId = '$_SESSION[hseId]' and tblattendance.hseArmId = '$_SESSION[hseArmId]'");

if(mysqli_num_rows($ret) > 0 )
{
while ($row=mysqli_fetch_array($ret)) 
{ 
    
    if($row['status'] == '1'){$status = "Present"; $colour="#00FF00";}else{$status = "Absent";$colour="#FF0000";}

echo '  
<tr>  
<td>'.$cnt.'</td> 
<td>'.$firstName= $row['firstName'].'</td> 
<td>'.$lastName= $row['lastName'].'</td> 
<td>'.$otherName= $row['otherName'].'</td> 
<td>'.$phoneNumber= $row['phoneNumber'].'</td> 
<td>'.$hseFellowshipName= $row['hseFellowshipName'].'</td> 
<td>'.$hseArmName=$row['hseArmName'].'</td>	
<td>'.$sessionName=$row['sessionName'].'</td>	 
<td>'.$weekName=$row['weekName'].'</td>	
<td>'.$status=$status.'</td>	 	
<td>'.$dateTimeTaken=$row['dateTimeTaken'].'</td>	 					
</tr>  
';
header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=".$filename."-report.xls");
header("Pragma: no-cache");
header("Expires: 0");
			$cnt++;
			}
	}


?>

