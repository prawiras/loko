<?php
namespace Config;
use PDO;
class Database extends PDO 
{
	private $host 		= 'localhost';
	private $dbname 	= 'webpro';
	private $username 	= 'dumet';
	private $password 	= 'school';

	function __construct()
	{
	parent::__construct(
	'mysql:host='.$this->host.';dbname='.$this->dbname,$this->username,$this->password);	
	}

}


