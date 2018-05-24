<?php
namespace Controller;
use Config\Database as DB;
class Blogs extends DB 
{

  protected $table_kategori = 'category_blog';
  protected $table_post 		= 'posts';
  protected $table_komen    = 'comments';

  public function tampilKategori()
  {
   	$stmt = $this->prepare("SELECT * FROM $this->table_kategori ORDER by id DESC");
   	$stmt->execute();
   	$result = $stmt->fetchAll();
   	return $result;
  }

  public function tampilData()
  {
   	$stmt = $this->prepare("SELECT * FROM $this->table_post ORDER by id DESC");
   	$stmt->execute();
    $result = $stmt->fetchAll();
   	return $result;
  }

  public function getCategory($id)
  {
    $stmt = $this->prepare("SELECT * FROM $this->table_post WHERE id_category = $id ORDER by id DESC");
    $stmt->execute();
    $result = $stmt->fetchAll();
    return $result;
  }

  public function getSearch($keywords)
  {
    $stmt = $this->prepare("SELECT * FROM $this->table_post WHERE (title LIKE '%$keywords%' OR news LIKE '%$keywords%') ORDER by id DESC");
    $stmt->execute();
    $result = $stmt->fetchAll();
    return $result;
  }

  public function getTitle($id)
  {
    $stmt = $this->prepare("SELECT * FROM $this->table_kategori WHERE id = $id");
    $stmt->execute();
    $result = $stmt->fetch();
    return $result;
  }

  public function detail($id)
  {
 		$stmt = $this->prepare("SELECT * FROM $this->table_post WHERE id = $id");
 		$stmt->execute();
 		$result = $stmt->fetch();
 		return $result;
   		
  }

  public function tampilKomen($id)
  {
   	$stmt = $this->prepare("SELECT * FROM $this->table_komen WHERE post_id = $id ORDER by id DESC");
   	$stmt->execute();
   	$result = $stmt->fetchAll();
   	return $result;
  }

  public function kirimKomen($data)
  {
    if ($data['username'] == '' || $data['reply'] == '') {
    header('Location: index.php?detail='.$data['post_id'].'&MessageError#comments');
    }else{
    $fields = implode(' ,', array_keys ($data));
    $values = '"'.implode('","', array_values ($data)).'"';
    $stmt = $this->prepare("INSERT INTO $this->table_komen($fields) VALUES ($values)");
    $stmt->execute();
    header('Location: index.php?detail='.$data['post_id'].'&MessageSuccess#comments');
    }
  }

}