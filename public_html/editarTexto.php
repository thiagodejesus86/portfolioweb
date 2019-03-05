<?php

	include_once "includes/head.php";

	include_once "includes/conexao.php";

	include_once "includes/header.php";
?>
	<style type="text/css">
		#main h1{
			font-size: 26pt;
			color: #646;
			margin: 50px auto;
		}
		#formInsereNoticia{
			padding: 30px;
			height: auto;
			background: #fafafa;
		}
		#formInsereNoticia label{
			display: block;
			width: 100%;
			height: auto;
		}
		#formInsereNoticia span{
			display: block;
			width: 100%;
			height: 30px;
			line-height: 30px;
			color: #646;
			font-size: 12pt;
			font-weight: 400;
		}
		#formInsereNoticia input,
		#formInsereNoticia textarea{
			display: block;
			width: 100%;
			border: 1px solid #646;
			background: #fff;
			border-radius: 2px;
			font-family: calibri, arial, sans-serif;
			font-size: 12pt;
			color: #646;
		}
		#formInsereNoticia input{
			height: 30px;
			line-height: 30px;
			padding: 0 5px;
			color: #646;
		}
		#formInsereNoticia textarea{
			position: relative;
			height: auto;
			min-height: 100px;
			padding: 5px;
		}
		#botaoEnviar{
			margin: 30px auto;
		}
		#imagem{
			display: inline-block;
			width: 100%;
		}
		#imagem img{
			width: 100%;
		}
		.divide-imagem{
			display: inline-block;
			width: 45%;
			height: 200px;
			vertical-align: middle;
		}
		.divide-imagem figcaption{
			height: 30px;
		}
		.divide-imagem img{
			height: 170px;
		}
	</style>
<?php

	if(!isset($_SESSION['user'])){
		//SE NÃO HOUVER SOLICITAÇÃO ATRAVÉS DA URL, O SCRIPT ENCAMINHA
		//O CÓDIGO PARA A PÁGINA ANTERIOR 
		echo "<script>window.history.back()</script>";
	};

?>

	<div id="main" style="margin: 70px 0;">

		<?php
			if(!isset($_GET['id'])){
				echo "<h1>Não existe publicação para editar. Clique no botão abaixo para retornar</h1>";
				echo "<button onclick='window.history.back();'><i class='fa fa-return'></i> Voltar</button>";
			}else{
				$id = $_GET['id'];
				$sql = mysqli_query($con, "SELECT * FROM news WHERE id =".$id);
				$assoc = mysqli_fetch_assoc($sql);
		?>

			<div class="conteiner">

				<form id="formInsereNoticia" class="divide-2" method="POST" action="requisicoes/incluiPublicacao.php" enctype="multipart/form-data">
					<label>
						<span>Título</span>
						<input type="text" name="titulo" id="titulo" value="<?= $assoc['titulo'] ?>" />
					</label>
					<label>
						<span>Subtítulo</span>
						<input type="text" name="subtitulo" id="subtitulo" value="<?= $assoc['subtitulo'] ?>" />
					</label>
					<label>
						<span>Texto</span>
					</label>
					<textarea name="texto" id="texto"><?= $assoc['texto'] ?></textarea>
					<label>
						<span>Créditos</span>
						<input type="text" name="creditos" id="creditos" value="<?= $assoc['creditos'] ?>" />
					</label>
					<label>
						<span>Data da publicação</span>
						<input type="text" name="dataAtual" id="dataAtual" value="<?= date("d/m/Y") ?>" readonly="true" />
					</label>
					<br />

					<label id="imagem">
						<figure class="divide-imagem">
							<figcaption>
								Imagem atual:
							</figcaption>
							<img src="assets/img/<?= $assoc['imagem'] ?>">
						</figure>
						<i class="fa fa-exchange"></i>
						<figure class="divide-imagem" id="exibeImagem" title="Inserir Foto">
							<figcaption>
								Inserir foto:
								<input type="file" name="imagem" id="imagem" style="display: none;" />
							</figcaption>
							<script>
								$("#imagem").change(function(){
								    var url = $("#imagem").attr('src');
								    $("exibeImg").attr('src', url);
								});
							</script>
							<img src="" id="exibeImg" />
						</figure>

					</label>

					<label>
						<button id="botaoEnviar" class="btn btn-pink" type="submit">Atualizar <i class="fa fa-refresh"></i></button>
					</label>
				</form>
			</div>

		<?php
			};
		?>
	</div>

<?php 

	include_once "includes/footer.php";

?>
	