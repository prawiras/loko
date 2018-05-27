<?php
namespace Config;
use PDO;
class Database extends PDO 
{
	private $host 		= 'localhost';
	private $username 	= 'dumet';
	private $password 	= 'school';
	private $dbname 	= 'webpro';

	function __construct()
	{
	parent::__construct(
	'mysql:host='.$this->host.';dbname='.$this->dbname,$this->username,$this->password);	
	}

}


