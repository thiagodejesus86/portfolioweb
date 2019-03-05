<?php

	include_once "includes/head.php";

	include_once "includes/conexao.php";

	include_once "includes/header.php";

?>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
 
    <!-- Include Editor style. -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.4/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.4/css/froala_style.min.css" rel="stylesheet" type="text/css" />

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
		}
		#botaoEnviar{
			width: auto;
			height: 40px;
			line-height: 40px;
			padding: 0 20px;
			text-align: center;
			border: none;
			border-radius: 2px;
			background: #046;
			color: #fff;
			margin: 30px auto;
		}
	</style>
	
	<?php

		function message(){
			if(isset($_GET['status'] )){

				if($_GET['status'] == "error"){

					echo "<h2 style='text-align: center; color: #944; border: 3px solid #944; background: #ffe; padding: 10px;'><i class='fa fa-exclamation-circle'></i> ".$_GET['message']."</h2>";

				}else if($_GET['status'] == "success"){

					echo "<h2 style='text-align: center; color: #046; border: 3px solid #046; background: #eff; padding: 10px;'><i class='fa fa-exclamation-circle'></i> ".$_GET['message']."</h2>";

				}
			}
		};

		
		if( isset($_GET['status']) AND $_GET['status'] == 'error' ){
			function preencheDados($titulo = NULL, $subtitulo = NULL, $texto = NULL, $creditos = NULL){
				$titulo = $_POST['titulo'];
				$texto = $_POST['texto'];
				$creditos = $_POST['creditos'];
			}
		};

	?>

	<div id="main">

		<div class="conteiner" style="margin-bottom: 50px;">

			<ul class="nav" style="margin-top: 50px;">
				<li><a href="index.php" ><img src="assets/img/busquei-logo.png" style="width: 200px;"></a></li>
				<li><a href="index.php">Home</a> /</li>
				<li><a href="inserirPublicacao.php">Inserir Publicações</a></li>
			</ul>

			<hr class="divide" />

			<form id="formInsereNoticia" class="divide-2" method="POST" action="requisicoes/incluiPublicacao.php" enctype="multipart/form-data">
				<label>
					<span>Título</span>
					<input type="text" name="titulo" id="titulo" value="<?= isset($_GET['titulo']) ? $_GET['titulo'] : '' ; ?>" />
				</label>
				<label>
					<span>Subtítulo</span>
					<input type="text" name="subtitulo" id="subtitulo" value="<?= isset($_GET['subtitulo']) ? $_GET['subtitulo'] : '' ; ?>" />
				</label>
				<label>
					<span>Texto</span>
				</label>
				<textarea name="texto" id="texto"><?= isset($_GET['texto']) ? $_GET['texto'] : '' ; ?></textarea>
				<label>
					<span>Créditos</span>
					<input type="text" name="creditos" id="creditos" value="<?= isset($_GET['creditos']) ? $_GET['creditos'] : '' ; ?>" />
				</label>
				<label>
					<span>Data da publicação</span>
					<input type="text" name="dataAtual" id="dataAtual" value="<?= date("d/m/Y") ?>" readonly="true" />
				</label>
				<br />

				<label title="Inserir Foto" style="background: #eee; line-height: 30px; cursor: pointer; padding: 10px 5px">
					<span><i class="fa fa-image" style="font-size: 26pt;"></i> Inserir foto</span>
					<input type="file" name="imagem" id="imagem" style="display: none;" onchange="carregarImagem(this)" />
					<script type="text/javascript">
						function carregarImagem(el){
							var elem = $(el).val().split("\\").pop();
							$("#exibeImagem").html("<p style='color: #646'>Imagem <i style='color: #666; font-weight: 100'>\""+elem+"\"</i> preparada para ser enviada!</p>");
						}
					</script>
					<figcaption id="exibeImagem"></figcaption>
				</label>

				<label>
					<button id="botaoEnviar" type="submit">Criar Publicação</button>
				</label>
			</form>

			<div class="divide-2" style="padding: 0 50px;">
				<h1>Criar publicações</h1>
				<p>Ponsectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

				<br />
				<br />

				<p>Confira aqui as publicações mais recentes: <button class="btn btn-blue" onclick="janelaModal('requisicoes/verPub.php')">Clique aqui</button></p>
			 
			    <!-- Include external JS libs. -->
			    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
			    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
			 
			    <!-- Include Editor JS files. -->
			    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.4/js/froala_editor.pkgd.min.js"></script>
			 
			    <!-- Initialize the editor. -->
			   <!--  <script> $(function() { $('textarea').froalaEditor() }); </script> -->

				<?php 
					message();
				?>

			</div>
		</div>
	</div>

<?php

	include_once "includes/footer.php";

?>