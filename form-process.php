

<?php
include("config.php");
include('include/header.php');
extract($_POST);
$sql = "INSERT INTO `tbl_contact`(`firstname`, `lastname`, `phone`, `email`, `message`) VALUES ('".$firstname."','".$lastname."',".$phone.",'".$email."','".$message."')";
$result = $mysqli->query($sql);
if(!$result){
    die("Couldn't enter data: ".$mysqli->error);
}
echo "Thank You For Contacting Us ";










$mysqli->close();
?>
