<?php
	
	session_start();
	
	include_once("conexao.php");
	
	isset($_SESSION['user']) ? header("location: ../index.php") : "";
	
?>

<!DOCTYPE html>

<html lang="pt-BR">

	<head>
	
		<title>Página login</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<script type="text/javascript" src="../assets/js/jquery.js"></script>
		<script type="text/javascript" src="../assets/js/helpers.js"></script>

		<link rel="stylesheet" type="text/css" href="../assets/css/estilos.css" />
		<link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css" />
		
		<style>
			.text-center{
				text-align: center;
			}
			#imgForm{
				text-align: center;
			}
			#imgForm img{
				width: 200px;
			}
			#tituloForm{
				text-align: center;
				height: 30px;
				line-height: 30px;
				margin: 30px auto;
			}
			#containerForm{
				width: 300px;
				height: auto;
				margin: 0 auto;
				margin-top: 50px;
				padding: 100px 0;
				font-family: arial, sans-serif;
				color: #646;
			}
			#formLogin{
				display: block;
				width: 100%;
				height: auto;
			}
			#formLogin label{
				display: block;
				width: 100%;
				height: auto;
				margin: 10px auto;
			}
			#formLogin input{
				border: 1px solid #646;
				width: 100%;
				height: 40px;
				background: #fff;
				color: #222;
				padding: 0 5px;
			}
			#formLogin input::placeholder{
				color: #646;
			}
			#formLogin .botaoForm{
				display: block;
				width: 200px;
				height: 40px;
				line-height: 40px;
				border: 1px solid #fff;
				background: #646;
				color: #fff;
				font-weight: bolder;
				border-radius: 3px;
				margin: 40px auto;
				text-align: center;
				text-decoration: none;
			}
		</style>
	
	</head>
	
	<body>

		<div id="main">

			<section id="containerForm">
			
				<figure id="imgForm">
					<img src="../assets/img/busquei-logo.png" alt="" title="">
				</figure>
		
				<div id="formLogin" class="form">
					<label>
						<span>Usuário:</span>
						<input type="text" name="user" id="user" placeholder="Usuário" autocomplete="off" autofocus="autofocus" />
					</label>
					<label>
						<span>Senha:</span>
						<input type="password" name="password" id="password" placeholder="Senha" autocomplete="off" />
					</label>
					<label>
						<button class="botaoForm" type="submit" onclick="logIn()">Logar</button>
					</label>
				</div>
				
			</section>

		</div>
		
		<?php include_once("footer.php"); ?>
	
	</body>
	
</html>