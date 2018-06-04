<?php 
include 'database.php';
 include 'header.php'; ?> 
<center><h4> MinSide for kunder </h4></center>

<?php 
$sql= "SELECT *  FROM `paamelding` Where deltager_id = 1 Order by fremstilling ASC";
$result = mysqli_query($conn,$sql);

if ($fu){
	$sql=$sql." WHERE deltager_id=1'".$fu."'";	
}

$result = mysqli_query($conn,$sql);

//echo '<td tyle="text-align:center;">' . $row['enroll'] . '</td>';
 
echo "<p style='padding:1px;display:inline-block'><table><tr><th>Deltager_id</th><th>Event_id</th><th>Fremstilling</th></tr>";

// output data of each row
    while($row = mysqli_fetch_assoc($result)) {
		
        echo "<tr>";
		echo "<td>" . $row["deltager_id"]. "</td>";
		echo "<td>" . $row["event_id"]. "</td>";
		echo "<td>" . $row["fremstilling"]. "</td>";
		echo "</tr>";
    }
	echo "</table></p>";

mysqli_close($conn);






?>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
 
 <?php include 'footer.php'; ?> 