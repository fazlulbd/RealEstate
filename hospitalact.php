<?php
include 'database.php';

$name=$_POST['name'];
$fathername=$_POST['fathername'];
$mothername=$_POST['mothername'];
$phone=$_POST['phone'];
$age=$_POST['age'];
$email=$_POST['email'];


$sql="INSERT INTO tbl_hospital(name,fathername,mothername, phone,age,email) VALUES ('$name','$fathername','$mothername','$phone','$age','$email')";

$result=mysqli_query($conn, $sql);

if($result){
    header('Location: ./index.php');
}
এদ
?>