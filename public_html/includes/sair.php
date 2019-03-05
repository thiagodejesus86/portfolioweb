<?php
	session_start();
	
	unset($_SESSION['id']);
	unset($_SESSION['email']);
	unset($_SESSION['user']);
	unset($_SESSION['password']);
	unset($_SESSION['nivel']);
	unset($_SESSION['ativo']);
	unset($_SESSION['data']);
	unset($_SESSION['imagem']);
	
	header("location: ../index.php");
	
?>