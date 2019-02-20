<?php

	require_once "conn.php";

	$success = isset($_GET['success']) ? "<h3 class='display-4 text-center text-info'>".$_GET['success']."</h3>" : "";
	$error = isset($_GET['error']) ? "<h3 class='display-4 text-center text-danger'>".$_GET['error']."</h3>" : "";

?>

	<!DOCTYPE html>

		<html lang="pt-BR">

		<head>

			<title>Projeto</title>

			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />

			<link rel="stylesheet" type="text/css" href="assets/css/estilos.css" />
			<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

			<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		</head>

		<body>