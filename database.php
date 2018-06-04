<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "arenaoslo";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8");

function encrypt($key, $toEncrypt)
{
    return base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $toEncrypt, MCRYPT_MODE_CBC, md5(md5($key))));
}

function decrypt($key, $toDecrypt)
{
    return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($toDecrypt), MCRYPT_MODE_CBC, md5(md5($key))), "\0");
}
?>