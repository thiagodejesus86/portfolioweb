<?php

	session_start();

	include "../includes/conexao.php";
		
	$titulo = mysqli_real_escape_string($con, $_POST['titulo']);
	$subtitulo = mysqli_real_escape_string($con, $_POST['subtitulo']);
	$texto = mysqli_real_escape_string($con, $_POST['texto']);
	$creditos = mysqli_real_escape_string($con, $_POST['creditos']);
	$imgName = $_FILES['imagem']['name'];
	$path = "../assets/img/imgPublicacoes/";

	$insere = "INSERT INTO news (titulo, subtitulo, texto, creditos, imagem, data) VALUES ('".$titulo."', '".$subtitulo."', '".$texto."', '".$creditos."', '".$imgName."', NOW() ) ";

	if( empty($titulo) OR empty($subtitulo) OR empty($texto) OR empty($creditos) ){
		echo "<script>window.location.href = '../inserirPublicacao.php?status=error&message=Existem%20campos%20vazios.%20Favor%20preencher&titulo=".$titulo."&subtitulo=".$ubtitulo."&texto=".$texto."&creditos=".$creditos."'</script>";
		die();
	}else{
		$mover = move_uploaded_file($_FILES['imagem']['tmp_name'], $path.$imgName);
		if ($mover){
			mysqli_query($con, $insere);
			echo "<script>window.location.href = '../inserirPublicacao.php?status=success&message=Successo ao criar a publicação'</script>";
		}else{
			echo "<script>window.location.href = '../inserirPublicacao.php?status=error&message=".mysqli_error($con)."'</script>";
		}

	};

///----------------------------------