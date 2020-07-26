<?php

session_start();

if(!isset($_SESSION['loggedin'])|| $_SESSION['loggedin']!=true){
  $loggedin=true;
  
}
else{

  $loggedin=false;
}




  

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Coding Cafe</title>
  </head>
  <body>
      <?php include 'partials/header.php' ?>
      <?php include 'partials/db.php' ?>
      
      <?php

if($loggedin){
  
  
  
  echo'<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Please Login Here!</strong> You should logged in first to upload your content.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}
if(!$loggedin){
  $username= strtoupper($_SESSION['username']);
  echo'<div class="alert alert-success alert-dismissible fade show" role="alert">
     Welcome          <strong>'.$username .'</strong> Let upload your content chek out the content
  
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}
?>
    


   

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













        $sql="select * from `posts` order by dt Desc limit $start_from,$num_per_page ";
        $result=mysqli_query($conn,$sql);
        while($row=mysqli_fetch_assoc($result)){
            $title=strtoupper($row['title']);
            
            
            

            $id=$row['sno'];
            
            $content=$row['content'];
            
            $postby=strtoupper($row['postedby']);
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
            '.substr($content,0,100).' 
            </h3><a href="thread.php?id='.$id.'"><p>Read more ...</p></a>
            <strong><p class="post-meta">Posted by
            <a href="thread.php?id='.$id.'">'.$postby.'</a>
            '.$newDt.'</p></strong>
            </div>
            <hr>';
        }
        
        ?>

        <?php
        $pr_query ="select * from posts";
        $pr_result=mysqli_query($conn,$pr_query);
        $total_record=mysqli_num_rows($pr_result);
        
        $total_page=ceil($total_record/$num_per_page);

        if($page>1){
          echo '<a class="btn btn-primary float-left " href="index.php?page='.($page-1).'">&larr;Previous </a>';

        }

        for($i=1;$i<$total_page;$i++){
          echo '<a class="btn btn-primary " href="index.php?page='.$i.'">'.$i.'</a>';
           
        }

        if($page>1){
          echo '<a class="btn btn-primary float-right " href="index.php?page='.($page+1).'">>Next &rarr;</a>';

        }
        ?>
        
        <!-- Pager -->
       
    </div>
</div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>