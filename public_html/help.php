<?php 
	
	include_once('includes/head.php');

	include_once("includes/conexao.php");

	include_once('includes/header.php');

?>

	<style>
		.acordeao{
			display: block;
			width: 100%;
			height: auto;
			padding: 5px;
		}
		.link-acordeao{
			display: inline-block;
			text-decoration: none;
			width: 100%;
			height: 30px;
			line-height: 30px;
			color: #046;
			text-align: right;
		}
		.conteudo-acordeao{
			display: none;
			padding: 15px;
			height: auto;
			overflow: hidden;
			border-bottom: 1px solid #eaeaea;
		}
		.conteudo-acordeao p{
			line-height: 30px;
			font-size: 12pt;
			color: #666;
		}
	</style>

	<div id="main">
	
		<div class="conteiner">
			<p>Nesse trecho de código estou tentando através da lib do PHP chamada cURL,
			trazer conteúdos de outro site para dentro do meu projeto.</p>
			<br /><br />
			<?php
			
				$data = "";
				
				$cr = curl_init();
				$url = "http://www.thiagodejesus.com/";
				curl_setopt($cr, CURLOPT_URL, $url);
				curl_setopt($cr, CURLOPT_CONNECTTIMEOUT, 5);

				ob_start();
				curl_exec($cr);
				curl_close($cr);
				$file_contents = ob_get_contents();
				ob_end_clean();

				if(preg_match('/<title>([^<]++)/', $file_contents, $matches) == FALSE)
					$erro = "ERRO AO RESGATAR O TÍTULO DO SITE";

				echo "Título do site: ".$matches[1];

			?>
		</div>
	
		<div class="conteiner" style="margin: 30px auto;">
		
			<h1><i class="fa fa-question-circle"></i> Perguntas frequentes</h1>

		</div>

		<div class="conteiner" style="margin: 70px auto;">
		
			<div class="acordeao">
				<h4># O sistema é completo ou complexo?</h4>
				<div class="conteudo-acordeao">
					<p>Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica 
					e de impressos, e vem sendo utilizado desde o século XVI. </p>
				</div>
				<a href="#" class="link-acordeao fa fa-chevron-down"></a>
			</div>
			
			<div class="acordeao">
				<h4># Como faço uma pesquisa?</h4>
				<div class="conteudo-acordeao">
					<p>Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica 
					e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor 
					desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro 
					de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como 
					também ao salto para a editoração eletrônica, permanecendo essencialmente 
					inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques 
					contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser 
					integrado a softwares de editoração eletrônica como Aldus PageMaker. </p>
				</div>
				<a href="#" class="link-acordeao fa fa-chevron-down"></a>
			</div>

		</div>

		<style type="text/css">
			#form-duvida{
				display: block;
				width: 100%;
				max-width: 640px;
				height: auto;
				margin: 30px 0;
			}
			#form-duvida label{
				display: block;
				width: 100%;
			}
			#form-duvida span,
			#form-duvida textarea{
				display: block;
				width: 100%;
				margin: 20px 0;
			}
			#form-duvida textarea{
				max-width: 600px;
				min-width: 250px;
				height: auto;
				min-height: 200px;
				max-height: 400px;
			}
		</style>
			
		<div class="conteiner" style="margin: 70px auto; border-top: 1px solid #eaeaea; padding: 20px 0;">
			<h3>Minha dúvida não é a mesma que as perguntas acima.</h3>
			<form id="form-duvida" method="GET" action="#">
				<label>
					<span>Faça uma pergunta</span>
					<textarea id="texto-duvida"></textarea>
				</label>
				<button type="submit" class="btn btn-green">Enviar dúvida</button>
			</form>
		</div>
		
	</div><!-- MAIN -->
	
	<script>
		$(function(){
			$(".link-acordeao").on("click", function(a){
				a.preventDefault();
				$(this).toggleClass("fa-chevron-down fa-chevron-up");
				$(this).parent(".acordeao").each(function(){
					$(this).find(".conteudo-acordeao").slideToggle(800);
				});
			});
		});
	</script>

<?php
	include_once("includes/footer.php");
?>