<?php

	session_start();

	include "../includes/conexao.php";
		
	$titulo = $_POST['titulo'];
	$subtitulo = $_POST['subtitulo'];
	$texto = htmlentities($_POST['texto'], ENT_QUOTES);
	$creditos = $_POST['creditos'];

	$qr = "INSERT INTO publicacoes (titulo, subtitulo, conteudo, creditos, data) VALUES ('{$titulo}', '{$subtitulo}', '{$texto}', '{$creditos}', NOW())";

	if(mysqli_query($con, $qr)){
		echo "<script>window.location.href = '../inserirPublicacao.php?status=success&message=Successo ao criar a publicação'</script>";
	}else{
		echo "<script>window.location.href = '../inserirPublicacao.php?status=error&message=".mysqli_error($con)."'</script>";
	}

///----------------------------------