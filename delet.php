<?php 
include 'partials/db.php';


$id = $_GET['id'];
// echo $id;

$sql="DELETE FROM `posts` WHERE `posts`.`sno` = $id";
$result=mysqli_query($conn,$sql);

header("location: mypost.php");







?>