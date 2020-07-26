<?php
session_start();
if(!isset($_SESSION['loggedin'])|| $_SESSION['loggedin']!=true){
  header("location:index.php");
  exit;
}

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <title>My Post</title>



  </head>
  <body>
  <?php include 'partials/header.php' ;
  
  ?>
      <?php include 'partials/db.php' ?>
      
  
    <?php
    $username= strtoupper($_SESSION['username']);
    ?>
    <h2>Welcome <span class="badge badge-secondary"><?php echo ''.$username .' '?></span> your Post</h2>


    <div class="container">
            <div class="row my-5">
            <div class="col-lg-8 col-md-10 mx-auto">
    <?php 

if(isset($_GET['page'])){
  $page = $_GET['page'];
  

}
else{
  $page=1;
}

$num_per_page=8;
$start_from=($page-1)*$num_per_page;

    $name= $_SESSION['username'];

    $sql="select * from `posts` where username='$name' order by dt desc limit $start_from,$num_per_page ";
    $result=mysqli_query($conn,$sql);
    while($row=mysqli_fetch_assoc($result)){
      $title=strtoupper($row['title']);
        $id=$row['sno'];
        $content=$row['content'];
        $postby=$row['postedby'];
        $date=$row['dt'];
       $newDt= date('Y:m:d', strtotime($date));
       
        echo '
         <div class="post-preview">
        <a href="thread.php?id='.$id.'">
        <h2 class="post-title">
           '.$title.'
        </h2>
        </a>
        <h3 class="post-subtitle">
        '.substr($content,0,100).'...
        </h3>
        <strong><p class="post-meta">Posted by
        <a href="thread.php?id='.$id.'">'.$name.'</a>
        '.$newDt.'</p></strong>
        </div>
        <hr>';
    }
    
    ?>
    <?php
        $pr_query ="select * from posts where username='$name'";
        $pr_result=mysqli_query($conn,$pr_query);
        $total_record=mysqli_num_rows($pr_result);
        
        $total_page=ceil($total_record/$num_per_page);

        if($page>1){
          echo '<a class="btn btn-primary float-left " href="mypost.php?page='.($page-1).'">&larr;Previous </a>';

        }

        for($i=1;$i<$total_page;$i++){
          echo '<a class="btn btn-primary " href="mypost.php?page='.$i.'">'.$i.'</a>';
           
        }

        if($page>1){
          echo '<a class="btn btn-primary float-right " href="mypost.php?page='.($page+1).'">>Next &rarr;</a>';

        }
        ?>


</div>
</div>
<div class="container">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Date</th>
        
        <th>Delete</th>
        <th>Edit Comments</th>

      </tr>
    </thead>
    <tbody>

<?php
    $sql="select * from `posts` where username='$name' order by dt desc ";
    $result=mysqli_query($conn,$sql);
    while ($row=mysqli_fetch_assoc($result)) {
        $title=strtoupper($row['title']);
        $id=$row['sno'];
        $content=$row['content'];
        $postby=$row['postedby'];
        $date=$row['dt'];
        $newDt= date('d:m:y', strtotime($date));
      
        echo'
      <tr>
        <td>'.$id.'</td>
        <td>'.$title.'</td>
        <td>'.$newDt.'</td>
        
        <td><a href="delet.php?id='.$id.'"><button class="btn btn-primary">Delet</button></a></td>
        <td><a href="editComm.php?id='.$id.'"><button class="btn btn-primary">Go To Comments</button></a></td>
        
      </tr>';
    }
      ?>
      
      
      
      
      
      
    </tbody>
  </table>
</div>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>