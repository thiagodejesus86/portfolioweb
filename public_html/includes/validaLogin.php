<?php

	session_start();
	
	include_once "conexao.php";
	
	if(isset($_POST['user'])){
				
		$user = $_POST['user'];
		$password = $_POST['password'];
				
		$sql = "SELECT id, email, user, password, nivel, ativo, data, imagem FROM user_login WHERE user = '{$user}' AND password = '{$password}' ";
			
		$query = mysqli_query($con, $sql);
				
		$row = mysqli_num_rows($query);
				
		if($row > 0){
			
			$dados = mysqli_fetch_array($query);
			
			$_SESSION['id'] = $dados['id'];
			$_SESSION['email'] = $dados['email'];
			$_SESSION['user'] = $dados['user'];
			$_SESSION['password'] = $dados['password'];
			$_SESSION['nivel'] = $dados['nivel'];
			$_SESSION['ativo'] = $dados['ativo'];
			$_SESSION['data'] = $dados['data'];
			$_SESSION['imagem'] = $dados['imagem'];
			
			echo 1;
			
		}else{
			
			echo mysqli_error($con);
			
		};	
		
	};
	
	
	