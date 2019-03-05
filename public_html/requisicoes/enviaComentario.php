<?php 

	include_once('../includes/conexao.php');
	
	$comentario = $_POST['comentario'];
	$id_user = $_POST['id_user'];
	$id_news = $_POST['id_news'];
	
	$envia = "INSERT INTO comentarios VALUES (NULL, '{$comentario}', '{$id_user}', NOW(), '{$id_news}')";
	
	if(mysqli_query($con, $envia)){
		echo 1;
	}else{
		echo mysqli_error($con);
	}