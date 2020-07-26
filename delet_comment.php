<?php 
include 'partials/db.php';


$id = $_GET['comment_id'];
// echo $id;

$sql="DELETE FROM `comments` WHERE `comments`.`sno` = $id";
$result=mysqli_query($conn,$sql);
// echo'deleted';

header("location: mypost.php");







?>