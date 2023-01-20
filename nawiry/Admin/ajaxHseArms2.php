<?php

include '../Includes/dbcon.php';

    $cid = intval($_GET['cid']);//

        $queryss=mysqli_query($conn,"select * from tblhsearms where hseId=".$cid."");                        
        $countt = mysqli_num_rows($queryss);

        echo '
        <select required name="hseArmId" class="form-control mb-3">';
        echo'<option value="">--Select Location--</option>';
        while ($row = mysqli_fetch_array($queryss)) {
        echo'<option value="'.$row['Id'].'" >'.$row['hseArmName'].'</option>';
        }
        echo '</select>';
?>

