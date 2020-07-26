<?php


if(!isset($_SESSION['loggedin'])|| $_SESSION['loggedin']!=true){
  $loggedin=true;
  
}
else{

  $loggedin=false;
}

echo
'<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <a class="navbar-brand" href="index.php">Musica</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                </li>
                


                <li class="nav-item">
                    <a class="nav-link" href="about.php">About</a>
                </li>


              

                <li class="nav-item">
                <a class="nav-link" href="contact.php">Contact us</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="addPost.php">Add post</a>
                </li>
               
               

                


                
               
            </ul>
            ';

            ?>
            <?php
            if($loggedin){
            echo'
            <div class="mx-2 row">
            <a class="btn btn-outline-danger" href="signup.php">Sign up</a>
            </div>
            <div class="mx-2">
            <a class="btn btn-outline-danger my-2" href="login.php">Log in</a>
            </div>';}
            if(!$loggedin){
                echo'
            <div class="mx-2">
            <a class="btn btn-outline-danger" href="logout.php">Logout</a>
            </div>
            <div class="mx-2">
            <a class="btn btn-outline-danger" href="mypost.php">My Posts</a>
            </div>';
            }
            ?>
            </div>
            </nav>
            </html>