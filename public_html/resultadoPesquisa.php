<?php
	include_once "includes/conexao.php";
?>

<!DOCTYPE html>

<html lang="pt-BR">

<head>
	
	<title>Resultado da pesquisa</title>
	
	<?php include_once "includes/head.php"; ?>

	<style type="text/css">
		hr{
			border: none; 
			height: 1px; 
			background: #ede;
		}
		#area-de-pesquisa{
			display:flex;
			align-items: center;
			background: #202; 
			color: #fff;
			height: auto;
		}
		#pesquisa{
			padding: 0; 
			margin: 0; 
			display: inline-block;
			vertical-align: middle;
		}
		#pesquisa button{
			top: 8px;
		}
		#areaResultado{
			height: auto !important;
			min-height: 50px;
			margin: 0 auto;
			padding: 30px 0;
		}
		.texto-publicacao{
			width: 100%; 
			margin-left: 10px; 
			overflow: hidden; 
			font-family: sans-serif; 
			font-size: 11pt; 
			line-height: 30px; 
			color: #646;
		}
		.texto-publicacao a{
			color: #646; 
			text-decoration: none;
			display: inline-block;
			width: auto;
			height: 30px;
			line-height: 30px;
			padding: 0 15px;
			border-radius: 3px;
			transition: all, .4s ease-in-out;
			-webkit-transition: all, .4s ease-in-out;
			-moz-transition: all, .4s ease-in-out;
			-ms-transition: all, .4s ease-in-out;
		}
		.texto-publicacao a:hover{
			border: #646;
			color: #fff;
			transition: all, .4s ease-in-out;
			-webkit-transition: all, .4s ease-in-out;
			-moz-transition: all, .4s ease-in-out;
			-ms-transition: all, .4s ease-in-out;
		}
		/* PARÁGRAFO QUE LISTA OS RESULTADOS DA PESQUISA */
		.exibe-resultados{
			animation: fade 1s 1;
		}
		
		@keyframes fade{
			from{opacity: 0;}
		}
		@media (max-width: 768px){
			.home{
				display: none;
			}
		}
	</style>

</head>

<body>

	<?php include_once "includes/header.php"; ?>

	<div id="main">

		<div id="area-de-pesquisa">
			<div class="conteiner">
				<div class="divide-all">
					<div class="home">						
						<a href="index.php" style="color: #fff; text-decoration: none;"><i class="fa fa-home"></i> Home</a>
					</div>
					<form id="pesquisa" action="resultadoPesquisa.php">
						<input type="text" name="pesquisa" placeholder="<?= isset($_GET['pesquisa']) ? "Último item pesquisado: ".$_GET['pesquisa'] : "Digite sua pesquisa"; ?> " />
						<input type="hidden" name="min" value="0" />
						<button onclick=""><i class="fa fa-search"></i></button>
					</form>
				</div>
			</div>
		</div> <!-- FECHA area-de-pesquisa -->

		<div class="conteiner">

		<?php

			echo "<div id='areaResultado'>";

			echo "<div class='conteiner'>";

			if( isset($_GET['pesquisa'])):
			
				$pesquisa = ltrim($_GET['pesquisa']);
				
				$min = ceil($_GET['min']);
				$max = 5;
				
				$sql = "SELECT * FROM news WHERE titulo LIKE '%".$pesquisa."%' OR subtitulo LIKE '%".$pesquisa."%' OR texto LIKE '%".$pesquisa."%' ORDER BY data DESC LIMIT $min, $max";
			
				$consulta = mysqli_query($con, $sql);
				
				$linha = mysqli_num_rows($consulta);
				
					if( $linha > 0 ){
						
						echo "Listando resultado para: <span style='color: #c00;'>'".$pesquisa."'</span><br /><br />";
						while( $result = mysqli_fetch_array($consulta) ){
				?>
					
					<!-- EXIBIÇÃO DOS RESULTADOS -->

					<div style="padding: 30px; margin: 10px 0; border-bottom: 1px solid #eee; background: #fefefe;">
						<small style="display: block; font-size: 8pt; color: #666; margin-bottom: 5px;"><i class="fa fa-calendar"></i> Data: <?= date('m/Y', strtotime($result['data'])) ?></small><br />
						<figure style="display: inline-block; vertical-align: top;">
							<img src="assets/img/<?= $result['imagem'] ?>" style="height: 50px;" />
						</figure>
						<div style="display: inline-block; vertical-align: top;">
							<h4 style="color: #646; text-transform: uppercase;">&bull; <?= $result['titulo']; ?></h4>
							<p class="texto-publicacao">
								<?= substr(nl2br($result['texto']), 0, 100)."..."; ?>
								<a href="publicacao.php?id=<?= $result['id']; ?>">Ver mais <i class="fa fa-long-arrow-right"></i></a>
							</p>
						</div>
					</div>

					<!-- FIM EXIBIÇÃO DOS RESULTADOS -->

				<?php
						};//FECHA WHILE

						//PAGINAÇÃO COMEÇA AQUI
						
						//DIVIDO A QUANTIDADE DE LINHAS POR 2
						
						$total = mysqli_query($con, "SELECT * FROM news");
						
						$itens_linha = mysqli_num_rows($total);
						
						$paginas = $itens_linha / $max;
			
						if($itens_linha > 0 && $linha > 1){

							echo "<div clas='paginacao' style='margin: 30px 0; color: #202;'><small>Paginação:</small> ";

							echo $_GET['min'] == 0 ? "<a href='#' style='visibility: hidden'>Hide</a>" : "<a href='resultadoPesquisa.php?pesquisa=$pesquisa&min=".($_GET['min'] - $max )."' class='btn-paginacao'><i class='fa fa-angle-double-left'></i></a> ";
							
							for($i=0; $i<$paginas; $i++){

								echo "<a href='resultadoPesquisa.php?pesquisa=$pesquisa&min=".(ceil($i * $max))."' class='btn-paginacao'>".(ceil($i) + 1)."</a>";

							};

							echo $min > $paginas ? "<a href='#' style='visibility: hidden'>Hide</a>" : " <a href='resultadoPesquisa.php?pesquisa=$pesquisa&min=".($_GET['min'] + $max )."' class='btn-paginacao'><i class='fa fa-angle-double-right'></i></a>";

							echo "</div>";
						
						}
					
						//PAGINAÇÃO TERMINA AQUI


											
					}else{
						echo "<h3>Sua pesquisa <span style='color: #c00'>$pesquisa</span> não retornou nenhum valor. Tente novamente</h3>";
						echo "<a href='resultadoPesquisa.php?pesquisa=".$pesquisa."&min=0' class='btn-paginacao'><i class='fa fa-long-arrow-left'></i> Voltar</a>";
					};
						
				else:

					
					echo "<div style='display: inline-block;'>";
						echo "<img src='assets/img/busquei-logo-lupa.png' style='display: inline-block; width: 40px;' />";
						echo "<h1 style='display: inline-block; color: #646'>Últimas notícias</h1>";
					echo "</div>";

					echo "<div id='exibeResultados'></div>";
			
				endif;

			echo "</div>";

		echo "</div>";//FECHA areaResultado


		?>

		</div>

	</div> <!-- FECHA main -->

	<script>
		function exibeResultados(max){
			$.ajax({
				url : "requisicoes/listagem-resultados.php?max="+max,
				success : function(retorno){
					$("#exibeResultados").html(retorno);
				}
			});
		};

		exibeResultados(3);
	</script>

	<?php include_once "includes/footer.php"; ?>

</body>

</html>