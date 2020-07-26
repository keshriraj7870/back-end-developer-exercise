<?php


include 'partials/header.php';
include 'partials/db.php';


?>


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Edit Comments</title>
</head>

<body>

    <div class="container">

        <?php
        $id = $_GET['id'];
        $sql = "SELECT * FROM `posts` WHERE sno=$id";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $title = strtoupper($row['title']);

            echo'<h1>Edit Comment Regarding <span class="badge badge-secondary">'.$title.'</span></h1>';
            
        }
        ?>





        <table class="table table-sm my-5">
            <thead>

            </thead>
            <tbody>
                <th scope="col">comments</th>
                <th scope="col">Date</th>
                <th scope="col">Delet</th>
                <?php

                $sql = "SELECT * FROM `comments` WHERE post_id=$id";
                $result = mysqli_query($conn, $sql);
            

                while ($row = mysqli_fetch_assoc($result)) {
                
                    $id = $row["post_id"];
                    $comment_id=$row['sno'];
                    $content = $row["content"];
                    $comment_time = $row["dt"];



                    echo '
      <tr>
    <td>'.$content.'</td>
      <td>'.$comment_time.'</td>
      <td><a href="delet_comment.php?comment_id=' . $comment_id . '"><button class="btn btn-primary">Delet</button></a></td>
    </tr>';
                }
                ?>
                

            </tbody>
        </table>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>