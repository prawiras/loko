<?php 
$conn = new \controller\Blogs;
$r = $conn->detail($_GET['detail']);
if(isset($_POST['kirim'])){
$conn->kirimKomen($data = array('id'=>NULL,'post_id'=>$_GET['detail'],'username'=>$_POST['username'],'reply'=>$_POST['reply']));
}
?>
        <!-- Post Content Column -->
        <div class="col-lg-8">
          <h1 class='mt-4'><?php echo $r['title'] ?></h1>
          <!-- Author -->
          <p class="lead">
            by
            <a href="http://dumetschool.com" target="_blank">Brian Abraham</a>
          </p>

          <hr>

          <!-- Date/Time -->
          <p>Posted on <?php echo tgl_indo($r['date_post'], 'j-M-Y H:i:s', '');  ?></p>

          <hr>

          <!-- Preview Image -->
          <?php  $transformation_url = cloudinary_url($r['image_news']); ?>
          <img class="img-fluid rounded" src="<?php echo $transformation_url ?>" alt="">

          <hr>

          <!-- Post Content -->
          <p><?php echo $r['news'] ?></p>
          
          <hr>

          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">Leave a Comment:</h5>
            <div class="card-body">
              <?php echo "<form method='POST' action='index.php?detail=$r[id]'>"; ?>
              <div class="form-group">
                  <label for="username"> Username</label>
                  <input type="text" class="form-control" name="username" >
                </div>
                <div class="form-group">
                <label for="username"> Reply</label>
                  <textarea class="form-control" name="reply" rows="3" ></textarea>
                </div>
                <button type="submit" name="kirim" class="btn btn-primary">Submit</button>
              </form>
            </div>
          </div>

          <?php 
          if(isset($_GET['MessageSuccess'])){
          echo "<div class='alert alert-success'>
          <strong>Success!</strong> New Comment added below !.
          </div>";
          }
          if(isset($_GET['MessageError'])){
          echo "<div class='alert alert-danger'>
          <strong>Error!</strong> Comment Not added !.
          </div>";
          }
          ?>

          <!-- Single Comment -->
          <?php
          foreach($conn->tampilKomen($_GET['detail']) as $km){
          ?>
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0"><?php echo $km['username'] ?></h5>
              <?php echo $km['reply'] ?>
            </div>
          </div>
          <?php 
          } 
          ?>

        </div>

       