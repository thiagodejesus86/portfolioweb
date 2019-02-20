<?php

	if( isset($_FILES['sendimage']) ){

		$image = $_FILES['sendimage']['name'];
		
		$move = move_uploaded_file($_FILES['sendimage']['tmp_name'], "../assets/img/".$image);

		if(!$move){
			echo "<script>window.location.href= '../index.php?error=Não foi possível carregar a imagem'; </script>";
		}else{
			echo "<script>window.location.href= '../index.php?success=Imagem carregada com sucesso!'; </script>";
		}

	}else{
		$error = "Não existe imagem";
		echo $_FILES['sendimage']['error'];
	};