<?php 
include 'database.php';

//phpinfo (); 
if ($_POST["Registrer1"]== "Registrer") { 

$sql= "INSERT INTO `arenaoslo`.`deltagere` (`Fornavn`, `Etternavn`, `E-post`, `Passord`) VALUES ('".$_POST["regfornavn"]."', '".$_POST["regetternavn"]."', '".$_POST["rege-post"]."', '".md5($_POST["regpassord"])."')";
$result = mysqli_query($conn,$sql); 

setcookie("duerinnlogget",encrypt("Hei",$conn->insert_id),time()+3600);

header("Location: events.php");
die();

}
//phpinfo (); 
if ($_POST["submit2"]== "Logg inn") { 

	$sql= "SELECT deltager_id From deltagere WHERE `E-post`='".$_POST["username2"]."'and Passord='" .md5 ($_POST["password2"])."'";
	$result = mysqli_query($conn,$sql); 
	if ($result->num_rows == 1) {
		$row = mysqli_fetch_assoc($result);	
 		setcookie("duerinnlogget",encrypt("Hei",$row["deltager_id"]),time()+3600);
		header("Location: events.php"); die();
	}
}
?>

<?php include 'header.php'; ?> 
<center><img src="images/logginn.jpeg" width="1024" height="104" /></center>

<form action "logginn.php" method="Post">
    <table width="2466" border="0">
      <tr>
        <td width="50%" height="160" align="center">  
        <p>Brukernavn:
          <input type="text" name="username2">
          </p>
          <p>Passord:
            <input type="password" name="password2">
          </p>
            <input type="submit" name="submit2" value="Logg inn">
        </td>
        
<td width="1215"> 

        <p> Fornavn <input type="text" name="regfornavn"></p> 
        <p> Etternavn <input type="text" name="regetternavn" ></p> 
        <p> E-post <input type="text" name="rege-post" > </p>
        <p>Passord <input type="password" name="regpassord" >  </p>
        <p>Bekreft passord<input type="password" name="regbekreftpassord" > </p>
        <input type="submit" name="Registrer1" value="Registrer" > 
</td>
</tr>
</table>
</form>

  
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