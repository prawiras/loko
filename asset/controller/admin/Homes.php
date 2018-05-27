<?php
namespace Controller\Admin;
use Config\Database as DB;
class Homes extends DB 
{
  protected $table_users = 'users';

public function tampilData()
{
   $stmt = $this->prepare("SELECT * FROM $this->table_users ORDER by id DESC");
   $stmt->execute();
   $result = $stmt->fetchAll();
   return $result;
}

public function getData($id)
{
$stmt = $this->prepare("SELECT * FROM $this->table_users WHERE id = '$id'");
$stmt->execute();
$result = $stmt->fetch();
return $result;
}

public function simpanData($data)
{
    if ($data['username'] == '' || $data['email'] == '' || $data['password'] == '') {
    header('Location: main.php?home&act=tambah&MessageError');
    }else{
    $fields = implode(' ,', array_keys ($data));
    $values = '"'.implode('","', array_values ($data)).'"';
    $stmt = $this->prepare("INSERT INTO $this->table_users($fields) VALUES ($values)");
    $stmt->execute();
    header('Location: main.php?home&MessageSuccess');
    }
}

public function ubahData($id, $username, $email, $password, $status, $tanggal)
{
	if ($password == '') {
    $sql = $this->prepare("UPDATE $this->table_users SET username='$username', email='$email', status='$status', updated_at='$tanggal' WHERE id='$id'");
    }else{
    $sql = $this->prepare("UPDATE $this->table_users SET username='$username', email='$email', status='$status',password='$password', updated_at='$tanggal' WHERE id='$id'");	
    }
     $sql->execute();
    header('Location: main.php?home&MessageSuccess');

}

public function delleteData($id)
{
    $sql = $this->prepare("DELETE FROM $this->table_users WHERE id='$id'");
    $sql->execute();
    header('Location: main.php?home&MessageSuccess');
}



}