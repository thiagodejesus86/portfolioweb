	
	<?php 

		include_once "includes/head.php";		
		
		include "includes/header.php";

		include_once "includes/conexao.php";

	?>

	<style type="text/css">
		.conteudo{
			padding: 50px 100px;
		}
		#lateral,
		#principal{
			display: inline-block;
			vertical-align: top;
			position: relative;
			height: auto;
			min-height: 100vh;
		}
		#lateral{
			width: 400px;
		}
		#lateral ul{
			list-style-type: none;
		}
		#lateral a{
			color: #424;

		}
		#principal{
			width: calc(100% - 450px);
			border-right: 1px solid #ccc;
			padding: 0 50px;
		}
		.noticia{
			width: auto;
			max-width: 760px;
		}
		.data-publicacao{
			font-size: 10pt;
			color: #999;
		}
		.data-publicacao:after{
			content: "";
			display: block;
			width: 100px;
			height: 1px;
			margin-bottom:10px; 
			background: #cac;
		}
		figure#logo{
			display: block;
			width: 100%;
			height: 50px;
		}
		figure#logo img{
			height: 30px;
			width: auto;
		}
		.nav{
			display: block;
			width: 100%;
			height: 40px;	
			line-height: 40px;
			background: #f2f2f2;
			margin: 30px auto;
			padding: 0 5px;
		}
		.nav a{
			text-decoration: underline;
			color: #646;
			font-size: 11pt;
		}
		#principal h1.titulo{
			color: #424;
			text-transform: uppercase;
			font-size: 30pt;
			margin: 30px 0; 
		}
		#principal h3.subtitulo{
			color: #aaa;
			font-weight: 300;
			height: auto;
			line-height: 30px;
			margin-bottom: 30px;
			border-bottom: 1px solid #eee;
			font-size: 14pt;
		}
		#principal figure#imagem-texto{
			display: block;
			width: 100%;
			height: auto;
			float: left;
			padding: 30px 0;
			text-align: center;
			margin-bottom: 30px;
			background: #efefef;
		}
		#principal figure#imagem-texto img{
			width: auto;
			max-width: 100%;
			height: auto;
			max-height: 400px;
		}
		#principal figure#imagem-texto figcaption{
			font-size: 12pt;
			color: #646;
			width: 100%;
		}
		#principal p.texto{
			color: #666;
			font-size: 16pt;
			line-height: 30px;
			
		}
		#principal .creditos{
			font-size: 12pt;
			margin: 30px 0;
			color: #666;
		}
		.botao-editar{
			display: inline-block;
			vertical-align: middle;
			text-decoration: none;
			color: #c00;
			font-size: 12pt;
			width: 30px;
			height: 30px;
			line-height: 30px;
			text-align: center;
			border-radius: 30px;
			border: 1px solid #c00;
		}
		@media (max-width: 768px){
			.conteudo{
				width: 100%;
				padding: 50px 10px;
			}
			#lateral,
			#principal{
				display: block;
				width: 100% !important;
				border: none;
				padding: 0;
				height: auto;
				min-height: 50px;
			}
			.nav{
				display: block;
				width: 100%;
				height: auto;
			}
			figure#imagem-texto{
				display: block;
				max-width: 100%;
				float: none;
				padding: 0;
			}
			figure#imagem-texto img{
				width: 100%;
				height: auto;
			}
			figure#imagem-texto figcaption{
			max-width: 100%;
			height: auto;
			overflow-y: auto;
			}
			.creditos{
				max-width: 100%;
				overflow-y: auto;
			}
		}
	</style>
			
	<section id="main">

		<div class="conteudo">

			<section id="principal">

				<div class="noticia">

					<?php
					
						if( isset($_GET['id'] ) ){
							
							$id = $_GET['id'];
							//$sql = mysqli_query($con, "SELECT * FROM news WHERE id =".$id);
							$sql = mysqli_query($con, "SELECT * FROM news WHERE id =".$id);
							$linha = mysqli_num_rows($sql);
						
							if($linha > 0){
								$pub = mysqli_fetch_assoc($sql);
					?>
							<figure id="logo">
								<a href="index.php" title="Voltar ao início"><img src="assets/img/busquei-logo.png" style="height: 50px; width: auto;" /></a>
							</figure>

							<p class="nav">
								<a href="index.php">Home</a>/
								<a href="resultadoPesquisa.php">Publicações</a>/
								<span style="color: #424; font-size: 11pt;"><?= strlen($pub['titulo']) >= 30 ? substr($pub['titulo'], 0, 30)."..." : $pub['titulo'] ?></span>
							</p>

							<span class="data-publicacao"><i class="fa fa-calendar"></i> <?= date('d/m/Y', strtotime($pub['data'])); ?></span>
							
							<h1 class="titulo">
								<i class="fa fa-newspaper-o"></i> 
								<?= $pub['titulo']; ?> 
								<?= isset($_SESSION['user']) ? "<a href='editarTexto.php?id=".$_GET['id']."' title='Editar texto' class='botao-editar'><i class='fa fa-pencil'></i></a>" : "" ?>
							</h1>

							<h3 class="subtitulo"><?= $pub['subtitulo']; ?></h3>

							<figure id="imagem-texto">
								<img src="assets/img/imgPublicacoes/<?= $pub['imagem'] ?>" title="<?= $pub['imagem'] ?>" alt="<?= $pub['imagem'] ?>" />
								<figcaption>
									<small>Créditos: <?= $pub['creditos']; ?></small>
								</figcaption>
							</figure>

							<!-- <p class="texto"><?= html_entity_decode($pub['conteudo']); ?></p> -->
							<p class="texto"><?= nl2br($pub['texto']); ?></p>

							<p class="creditos"><small>Créditos: <?= $pub['creditos']; ?></small></p>

							<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&width=175&layout=button&action=like&size=large&show_faces=true&share=true&height=65&appId" width="175" height="65" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>

							<!-- API DO FACEBBOK -->
							<div id="fb-root"></div>

							<script>
								(function(d, s, id) {
								  var js, fjs = d.getElementsByTagName(s)[0];
								  if (d.getElementById(id)) return;
								  js = d.createElement(s); js.id = id;
								  js.src = 'https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v3.1';
								  fjs.parentNode.insertBefore(js, fjs);
								}(document, 'script', 'facebook-jssdk'));
							</script>
							<!-- FIM API FACCEBOOK -->						
						<?php
							};

						if(isset($_SESSION['user'])){

							echo "<h4 style='color: #666; margin: 20px 0;'>Deseja participar da discussão? Escreva seu comentário:</h4>";
										
							$pegaId = 
							mysqli_query($con, 
							"SELECT 
							co.id, 
							co.comentario, 
							co.data_comentario data, 
							co.id_news, 
							co.comentario_user, 
							lo.id login_id_login, 
							lo.user, 
							n.id news_id_news
							FROM comentarios co
							INNER JOIN user_login lo
							ON co.id = lo.id
							INNER JOIN news n
							ON co.id = n.id
							WHERE co.id_news = $id
							");
							
							$linha = mysqli_num_rows($pegaId);
							
							$n = mysqli_fetch_array($pegaId);
						?>
							<div>
								<textarea style="width: 100%; height: 150px; padding: 10px; font-family: calibri, arial, sans-serif; color: #666; font-size: 12pt;" id="comentario"></textarea>
								<button class="btn btn-green" style="margin-top: 30px;" onclick="enviarComentario('<?= $_SESSION['user'] ?>', '<?= $_GET['id'] ?>')">Enviar comentário <i class="fa fa-send"></i></button>
							</div>	
					<?php
								};	
						}else{
							echo "<h1 style='color: #c00'><i class='fa fa-warning'></i> Nada para exibir</h1>";
							echo "<br /><br />";
						};
					?>

					<p style="color: #666; margin: 30px auto">
						<span style="font-size: 26pt; color: #666; border-bottom: 1px solid #eee;"><i class="fa fa-comments-o"></i></span> Veja o que o pessoal achou do texto acima:
					</p>
					
					<div id="carrega-comentarios"></div>

				</div> <!-- NOTICIA -->

			</section>

			<aside id="lateral">
				<h3>Menu lateral</h3>
				<ul>
					<li>
						<a href="index.php">Home</a>
					</li>
					<li>
						<a href="resultadoPesquisa.php">Últimas notícias</a>
					</li>
				</ul>
			</aside>

		</div>
	
	</section>
	
	<script>
		function carregaConteudo(id){
			$.ajax({
				url : "requisicoes/carregaComentarios.php",
				data : {
					id : id
				},
				success : function(retorno){
					$("#carrega-comentarios").html(retorno);
				}
			});
		}
	
		function enviarComentario(id_user, id_news){
			if($("#comentario").val() == ""){
				alert("Campo vazio. Favor preencher!");
				return false;
			}else{
				$.ajax({
					url : "requisicoes/enviaComentario.php",
					type : "POST",
					data : {
						comentario : $("#comentario").val(),
						id_user : id_user,
						id_news : id_news
						},
						success : function(retorno){
							if(retorno == 1){
								carregaConteudo("<?= $_GET['id'] ?>");
								$("#comentario").val("");
								alert("Criado com sucesso");								
							}else{
								alert("Erro: "+retorno);
							}
						}
				});
			}
		}

		setInterval(function(){carregaConteudo("<?= isset($_GET['id']) ? $_GET['id'] : NULL ?>")}, 1000);
	</script>
	
	<?php include_once "includes/footer.php"; ?>
	
	