<?php
session_start();
if(!isset($_SESSION['loggedin'])|| $_SESSION['loggedin']!=true){
  header("location:index.php");
  exit;
}

?>








<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Add Your Post</title>
</head>
<body>
<?php require 'partials/header.php' ?>
<?php include 'partials/db.php' ?>


<?php
$username= strtoupper($_SESSION['username']);



if ($_SERVER['REQUEST_METHOD']=='POST') {
    $title=$_POST['title'];
    $content=$_POST['content'];
    $postby=$_POST['postedby'];
    $username=$_POST['uname'];

    $sql="INSERT INTO `posts` (`title`, `content`, `postedby`, `dt`, `USERNAME`) 
    VALUES ('$title', '$content', '$postby', current_timestamp(), '$username')";
    $result=mysqli_query($conn,$sql);

    if($result){
      echo'<div class="alert alert-primary alert-dismissible fade show" role="alert">
      <strong>Success!</strong> Your Post has been submited.
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>';
  }
  else{
      echo'<div class="alert alert-danger alert-dismissible fade show" role="alert">
      <strong> Failed!</strong> Your concern has not been submited.
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>';
  }

}

?>














<h2>Welcome <span class="badge badge-secondary"><?php echo ''.$username.''?></span> Let's add your Post</h2>

<div class="container">
<form action="addpost.php" method="post">
  <div class="form-group">
    <label for="title">Enter title of your blog</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Enter your title">
  </div>
  
 
  <div class="form-group">
    <label for="content">Enter the content of your Blog</label>
    <textarea class="form-control" id="content" name="content" rows="3"></textarea>
  </div>
  <div class="form-group">
    <label for="title">Posted By</label>
    <input type="text" class="form-control" id="postedby" name="postedby" placeholder="posted by">
  </div> <div class="form-group">
    <label for="title">Username</label>
    <input type="text" class="form-control" id="uname" name="uname" value="<?php echo $username?>" placeholder="username">
  </div>
  <button class="btn btn-danger">Add Post</button>
</form>
</div>

    
</body>
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>