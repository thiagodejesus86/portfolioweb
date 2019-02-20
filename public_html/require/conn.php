<?php

	session_start();

	define("HOST", "localhost");
	define("USER", "root");
	define("PASSWORD", "");
	define("DB", "projeto1");
	define("PORT", "3306");

	$con = mysqli_connect(HOST, USER, PASSWORD, DB, PORT);

	echo !$con ? "Erro ao tentar se conectar" : "";

	mysqli_set_charset($con, "utf8");

	date_default_timezone_set("America/Sao_paulo");