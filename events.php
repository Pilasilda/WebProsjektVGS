<?php 
include 'database.php';
include 'header.php'; 
include  'dropdownevents.php';
?>


<?php

$sql= "SELECT * FROM events";
$fi=$_GET["filter"];
if ($fi){
	$sql=$sql." WHERE eventsjanger='".$fi."'";	
}

$result = mysqli_query($conn,$sql);

//echo '<td tyle="text-align:center;">' . $row['enroll'] . '</td>';
 
echo "<p style='padding:1px;display:inline-block'><table><tr><th>Eventnavn</th><th>Eventsjanger</th><th>Tid</th><th>Beskrivelse</th><th>Velg</th></tr>";

// output data of each row
    while($row = mysqli_fetch_assoc($result)) {
		
        print "<tr>";
		print "<td>" . $row["eventnavn"]. "</td>";
		print "<td>" . $row["eventsjanger"]. "</td>";
		print "<td>" . $row["tid"]. "</td>";
		print "<td>" . $row["beskrivelse"]. "</td>";
		Print "<td><input type='submit' name='Velg' value='Submit'></input></td>";
		print "</tr>";

    }
	print "</table></p>";

mysqli_close($conn);
?>
<?php include 'footer.php'; ?> 
