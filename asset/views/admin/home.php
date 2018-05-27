<?php 
$conn = new controller\admin\Homes;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
$uuid4 = Uuid::uuid4()->toString();
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Users</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
<?php 

if(!isset($_GET['act'])):
 $act = 'default';
else:
 $act = $_GET['act'];   
endif; 

switch ($act) {                
case "tambah":
?>
<?php 
if(isset($_POST['simpan'])){
$conn->simpanData($data = array('id'=>$uuid4,'username'=>$_POST['username'],'email'=>$_POST['email'],'status'=>$_POST['status'],'password'=>md5($_POST['password']),'created_at'=>date("Y-m-d H:i:s"),'updated_at'=>date("Y-m-d H:i:s")));
}
?>
<?php 
if(isset($_GET['MessageError'])){
          echo "<div class='alert alert-danger'>
          <strong>Error!</strong> Data Not added !.
          </div>";
}
?>
<div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Basic Form Elements
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form" method="post" action="">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input class="form-control" type="text" name="username">
                                                <p class="help-block">Username</p>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input class="form-control" type="email" name="email">
                                                <p class="help-block">Email</p>
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input class="form-control" type="password" name="password">
                                                <p class="help-block">Password</p>
                                            </div>
                                          
                                            <div class="form-group">
                                                <label>Status</label>
                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="1" checked>Aktif
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="0">Tidak Aktif
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <button type="submit" name="simpan" class="btn btn-default">Simpan</button>
                                            <button type="reset" class="btn btn-default">Batal</button>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                    
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

<?php 
break;
case "edit":
?>
<?php 
$r = $conn->getData(@$_GET['id']);
if(isset($_POST['simpan'])){
$conn->ubahData($_POST['id'],$_POST['username'],$_POST['email'],md5($_POST['password']),$_POST['status'],date("Y-m-d H:i:s"));
}
?>
<?php 
if(isset($_GET['MessageError'])){
          echo "<div class='alert alert-danger'>
          <strong>Error!</strong> Data Not added !.
          </div>";
}
?>
<div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Basic Form Elements
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form" method="post" action="">
                                        <input class="form-control" type="hidden" name="id" value="<?php echo $r['id'] ?>">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input class="form-control" type="text" name="username" value="<?php echo $r['username'] ?>">
                                                <p class="help-block">Username</p>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input class="form-control" type="email" name="email" value="<?php echo $r['email'] ?>">
                                                <p class="help-block">Email</p>
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input class="form-control" type="password" name="password">
                                                <p class="help-block">Password</p>
                                            </div>
                                          
                                            <div class="form-group">
                                                <label>Status</label>
                                                <?php if ($r['status'] == 0): ?>
                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="1">Aktif
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="0" checked>Tidak Aktif
                                                    </label>
                                                </div>
                                            <?php else: ?>

                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="1" checked>Aktif
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input name="status" type="radio" value="0">Tidak Aktif
                                                    </label>
                                                </div>

                                            <?php endif; ?>
                                                
                                            </div>
                                            <button type="submit" name="simpan" class="btn btn-default">Simpan</button>
                                            <button type="reset" class="btn btn-default">Batal</button>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                    
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

<?php 
break;
case "delete":
$conn->delleteData($_GET['id']);
break;
?>
<?php
default:
?>
<?php 
  if(isset($_GET['MessageSuccess'])){
  echo "<div class='alert alert-success'>
  <strong>Success!</strong> Data added below !.
  </div>";
  }
?>
<P>
<a href="?home&act=tambah" class="btn btn-success">Tambah</a>
</P>
<div class="row">
                    <!-- /.col-lg-12 -->

                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Username</th>
                                                <th>Email</th>
                                                <th>Status</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>

                                    <tbody>
                                       <?php
                                        $no = 1;
                                        foreach($conn->tampilData() as $row){
                                        ?>
                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $row['username']; ?></td>
                                            <td><?php echo $row['email']; ?></td>
                                            <td><?php if ($row['status'] == 0): echo "Tidak Aktif"; else: echo "Aktif"; endif; ?></td>
                                            <td>
                                            <a href="main.php?home&act=edit&id=<?php echo $row['id']; ?>" type="button"> Edit</a> |
                                            <a type="button" href="main.php?home&act=delete&id=<?php echo $row['id']; ?>"> Delete</a>       
                                            </td>
                                        </tr>
                                        <?php 
                                        }
                                        ?>
                                           
                                    </tbody>


                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                

<?php 
break;
}
?>          