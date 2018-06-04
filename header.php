<!DOCTYPE html> 
<html> 
<head>  
<title> ArenaOslo </title>

<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon" href="images/loogo.gif" type="image/x-icon" /> 
<link rel="shortcut icon" href="images/loogo.gif" type="image/x-icon" />
</head>

<body background="images/hoved.jpg"> 
<div id="header"> 
<h1>Arena<br>
<a href="index.php">
    <img src="images/logo1.gif" width="80" height="80" border="0" align="center" id="Image1"></a>slo 
</h1>
<div id="hmenu"> 
<ul> 
  <li><a href="index.php">Hjem</a></li> 
  <li><a href="events.php">Events</a></li>  
  <li><a href="logginn.php">Innlogging</a></li>
  <p2><li><a href="minside.php">Min side</a></li></p2> 
  <li><a href="info.php">Info</a></li> 
</ul>   
</div> 
</div>

<p class="hoyre"> Innlogget som:

<?php 
$sql= "Select Fornavn,Etternavn 
		From deltagere 
		Where deltager_id=".decrypt ("Hei",$_COOKIE["duerinnlogget"]);
$result = mysqli_query($conn, $sql);

if ($result){
	while($row = mysqli_fetch_assoc($result)) {
		echo $row["Fornavn"].",".$row["Etternavn"]; 
	}
}
else {
	echo "du er ikke innlogget";
}
?>
</p>
</body>
