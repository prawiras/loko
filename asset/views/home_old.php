<?php 
use Controller\Blogs;
$conn = new Blogs;
?>
 

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <h1 class="my-4"><!-- Page Heading
            <small>Secondary Text</small> -->
          </h1>

          <!-- Blog Post -->
          <?php
          $no = 1;
          if (count($conn->tampilData()) > 0) {
          foreach($conn->tampilData() as $row){
          ?>
          <div class="card mb-4">
          <?php
          $transformation_url = cloudinary_url($row['image_news']);
          echo "<img class='card-img-top' src='$transformation_url' alt='Card image cap'>";
          echo "<div class='card-body'>
              <h2 class='card-title'>$row[title]</h2>
              <p class='card-text'>$row[news]</p>
              <a href='index.php?detail=$row[id]' class='btn btn-primary'>Read More &rarr;</a>
            </div>";

          echo "<div class='card-footer text-muted'>Posted on "; 
          echo tgl_indo($row['date_post'], 'j-M-Y H:i:s', ''); 
          echo "by <a href='https://www.dumetschool.com/' target='_blank'>Brian Abraham</a>
            </div>
          </div>";

          }

        }else{
        echo "<h1 class=my-4> Data<small> masih kosong !</small></h1>";   
        }
          ?>

          
         

          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">&larr; Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer &rarr;</a>
            </li>
          </ul>

        </div>

        

    