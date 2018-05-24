<?php 
use Controller\Blogs;
use Config\Pagination;
$conn = new Blogs;
$pag = new Pagination();
?>

<!-- Blog Entries Column -->
<div class="col-md-8">

  <h1 class="my-4"><!-- Page Heading
    <small>Secondary Text</small> -->
  </h1>

  <!-- Blog Post -->
  <?php
  if (!empty($_POST['cari']) || !empty($_GET['search'])) {
  $limit  = 2;
  if (!empty($_POST['cari'])) {
  $page = "index.php?search=".$_POST['cari']."&page=";
  $create_paginasi = $pag->Paginate($conn->getSearch($_POST['cari']),$page,$limit);
  }
  if (!empty($_GET['search'])) {
  $page = "index.php?search=".$_GET['search']."&page=";
  $create_paginasi = $pag->Paginate($conn->getSearch($_GET['search']),$page,$limit);
  }
  $result = $pag->fetchResult();

  if (count($result) > 0){
  foreach($result as $row){
  $desc = substr($row['news'],0,210); 
  $potong = substr($row['news'],0,strrpos($desc," "));
  ?>
  <div class="card mb-4">
  <?php
  $transformation_url = cloudinary_url($row['image_news']);
  echo "<img class='card-img-top' src='$transformation_url' alt='Card image cap'>";
  echo "<div class='card-body'>
      <h2 class='card-title'>$row[title]</h2>
      <p class='card-text'>$potong..</p>
      <a href='index.php?detail=$row[id]' class='btn btn-primary'>Read More &rarr;</a>
    </div>";

  echo "<div class='card-footer text-muted'>Posted on "; 
  echo tgl_indo($row['date_post'], 'j-M-Y H:i:s', ''); 
  echo "by <a href='https://www.dumetschool.com/' target='_blank'>Brian Abraham</a>
    </div>
  </div>";

  }
}else{
  echo "<h1 class=my-4><small> No News found with keyword : </small>".$_POST['cari']."</h1>";  
}
}else{
  echo "<h1 class=my-4><small> No News found with keyword NULL</small></h1>";
}
  ?>

<?php 
if (!empty($_POST['cari'])  || !empty($_GET['search'])) {
echo $create_paginasi;  
}  
?>  


</div>
