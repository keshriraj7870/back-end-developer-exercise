<?php
$server="localhost";
$username="root";
$password="";
$database="blog";

$conn =mysqli_connect($server,$username,$password,$database);
if($conn){
    // echo 'success';

}
else{
    echo 'Connection not established';
}


?>