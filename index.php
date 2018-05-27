<?php

// untuk index
// require __DIR__.'/asset/vendor/cloudinary/cloudinary_php/src/Cloudinary.php';
// require __DIR__.'/asset/vendor/cloudinary/cloudinary_php/src/Uploader.php';
require __DIR__.'/asset/vendor/autoload.php';
require __DIR__.'/asset/config/Tgl_Indo.php';
require __DIR__.'/asset/config/Pagination.php';

if (file_exists('asset/config/Settings.php')) 
{
require __DIR__.'/asset/config/Settings.php';
}
use Controller\Blogs;
$conn = new Blogs;
?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="asset/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-home.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="?home">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
           <!--  <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li> -->
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
    <div class="row">
    <?php
      if (isset($_GET["home"])) 
      include("asset/views/home.php");
      elseif (isset($_GET["category"])) 
      include("asset/views/category.php");
      elseif (isset($_GET["detail"])) 
      include("asset/views/detail_post.php");
      elseif (isset($_GET["search"])) 
      include("asset/views/search.php");
      else 
      include("asset/views/home.php");
    ?>


    <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
            <form method="POST" action="index.php?search">
              <div class="input-group">
                <input type="text" name="cari" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="submit" name="go">Go!</button>
                </span>
              </div>
            </form>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
              <div class='col-lg-6'><ul class='list-unstyled mb-0'>
                
                  
                   <?php
                    $no = 0;
                    foreach($conn->tampilKategori() as $kt){
                    if ($no !=0 && ($no % 4 == 0)){ echo "</ul></div><div class='col-lg-6'><ul class='list-unstyled mb-0'>"; }

                    echo "<li><a href='index.php?category=".$kt['id']."'>$kt[category_name]</a></li>";

                    
                    $no++;
                    }
                    echo "</ul></div>"; 
                    
                    ?>
                  
                
                
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <!-- <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div> -->

        </div>


    </div>
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="asset/jquery/jquery.min.js"></script>
    <script src="asset/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
