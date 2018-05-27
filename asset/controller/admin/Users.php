<?php
namespace Controller\Admin;
use Config\Database as DB;
class Users extends DB 
{
  protected $table_users = 'users';

  public function login($data)
  {

    $sql = $this->prepare("SELECT * FROM $this->table_users WHERE email = '".$data['email']."' AND password = md5('".$data['password']."')");
    $sql->execute();

    if ($sql->rowCount() === 1) {
      $result = $sql->fetch();
      $_SESSION['id'] = $result['id'];
      $_SESSION['username'] = $result['username'];
      $_SESSION['status'] = 1;
      header('location: main.php?home');
    }else{
      header('location: ?login&failed');
    }

  }

  public function logout(){
  session_destroy();
  header('location: index.php');
  }



}