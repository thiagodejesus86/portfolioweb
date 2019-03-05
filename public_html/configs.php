<?php
	
	require_once "includes/conexao.php";

	require_once "includes/head.php";

	require_once "includes/header.php";

?>
	<style type="text/css">
		#lateral,
		#principal{
			display: inline-block;
			height: auto;
			margin-right: -3px;
			padding: 20px;
			vertical-align: top;
		}
		#lateral{
			width: 200px;
		}
		#principal{
			width: calc(100% - 200px);
		}
		#lateral h4{
			background: #046;
			color: #fff;
			padding: 5px;
		}
		#lateral ul{
			list-style-type: none;
			margin: 5px 0;
		}
		#lateral button{
			border: none;
			width: 100%;
			height: 30px;
			margin: 2px 0;
			background: #0ac;
			color: #fff;
		}
		#lateral button:hover{
			background: #fc0;
			color: #404;
			cursor: pointer;
		}
		
		@media (max-width: 768px){
			#lateral,
			#principal{
				display: block;
				width: 100%;
			}
		}
	</style>

	<div id="main">
		<div class="conteiner" style="margin: 50px auto;">
			<h1>Configurações</h1>
			<hr />
			<p style="font-size: 12pt; color: #999; margin: 10px 0;"><?= isset($_SESSION['user']) ? "Usuário: ".$_SESSION['user'] : "" ?></p>
		</div>
		<div class="conteiner">
			<aside id="lateral">
				<h4><i class="fa fa-cogs"></i> Opções</h4>
				<ul>
					<li><button onclick="carregaConteudo('requisicoes/carregaConteudos.php')"><i class="fa fa-undo"></i> Carregar</button></li>
					<li><button onclick="carregaConteudo('requisicoes/carregaConteudos.php', 'atualiza')"><i class="fa fa-refresh"></i> Atualizar usuário</button></li>
					<li><button><i class="fa fa-th"></i> Opção 2</button></li>
					<li><button><i class="fa fa-th"></i> Opção 3</button></li>
					<li><button><i class="fa fa-th"></i> Opção 4</button></li>
				</ul>
			</aside>
			<section id="principal">
				<div id="carregaConteudo"></div>
			</section>
		</div>
	</div>

	<script>
		function carregaConteudo(url, funcao=null){
			$.ajax({
				url : url,
				type : "POST",
				data : {
					parametro : funcao
				},
				success : function(retorno){
					$("#carregaConteudo").html(retorno);
				}
			});
		};
		
		carregaConteudo('requisicoes/carregaConteudos.php');
	</script>

<?php

	require_once "includes/footer.php";