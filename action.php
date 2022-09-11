<?php
include 'database.php';

$name=$_POST['name'];
$fathername=$_POST['fathername'];
$mothername=$_POST['mothername'];
$phone=$_POST['phone'];
$class=$_POST['class'];
$email=$_POST['email'];


$sql="INSERT INTO tbl_school(name,fathername,mothername, phone, class,email) VALUES ('$name','$fathername','$mothername','$phone','$class','$email')";

$result=mysqli_query($conn, $sql);

if($result){
    header('Location: ./index.php');
}

?>