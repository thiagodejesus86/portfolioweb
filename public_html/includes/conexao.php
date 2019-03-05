<?php

	$host = "localhost";
	$user = "root";
	$pass = "";
	$db = "busquei_db";
	
	$con = mysqli_connect($host, $user, $pass, $db);
	if( !$con ){
		echo "Erro na conexão de dados";
	};

	mysqli_set_charset($con, "utf8");

?>