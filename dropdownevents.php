<link rel="stylesheet" type="text/css" href="style.css">
<b>Velg sjanger:</b>
 <select onChange="window.location.href='events.php?filter='+this.value">
<?php 
$sql= "SELECT distinct (eventsjanger ) FROM `events` Order by eventsjanger ASC";
$result = mysqli_query($conn,$sql);

// output data of each row
    while($row = mysqli_fetch_assoc($result)) { 
		$kul="";
		if (trim($row["eventsjanger"])== trim($_GET["filter"])) 
		{$kul='selected'; }
		echo sprintf ('<option value="%1$s" %2$s> %1$s  </option>',$row["eventsjanger"], $kul);
    }
?>
 </select>



