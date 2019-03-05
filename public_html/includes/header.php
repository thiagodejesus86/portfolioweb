<?php

	session_start();
	
	include_once("conexao.php");

?>

<header id="topo">
	<div class="conteiner">
		<div id="thumbs">
			<ul>
				<li>
					<a href="help.php"><i class="fa fa-question-circle"></i></a>
				</li>
				<li>
					<a href="#"><i class="fa fa-facebook-square"></i></a>
				</li>
				<li>
					<a href="#"><i class="fa fa-youtube-square"></i></a>
				</li>
			</ul>			
		</div>
		<div id="menu">
			<ul>				
				<li>
					<a href="#" id="toggle-collapse" data-toggle="menu-collapse-1" class="menu-toggle">
						<i class="fa fa-th"></i>
					</a>
				</li>
				<li>
					<a href="#" id="toggle-collapse-two" data-toggle="menu-collapse-2" class="menu-toggle">
						<i class="fa fa-cog"></i>
					</a>
				</li>
			</ul>			
		</div>
	</div>
	
	<div id="menu-collapse" class="menu-collapse">
		<a href="index.php"><i class='fa fa-home'></i> Início</a>
		<a href="resultadoPesquisa.php"><i class="fa fa-newspaper-o"></i> Publicações</a>
		<a href="publicacao.php?id=12"><i class='fa fa-area-chart'></i> Sobre o projeto</a>
		<a href="help.php"><i class='fa fa-question-circle'></i> Precisa de Ajuda?</a>
		<a href="#"><i class='fa fa-envelope'></i> Entre em contato</a>
	</div>
	
	<div id="menu-collapse-two" class="menu-collapse">
		<div id="user">
			<span style="padding-left: 10px;">
				<?php
					if (isset($_SESSION['user']) ):
				?>
			</span>
		</div>
		<a href="configs.php"><i class="fa fa-cog"></i> Configurações</a>
		<a href="#"><i class="fa fa-envelope"></i> Mensagens</a>
		<a href="inserirPublicacao.php"><i class="fa fa-plus-circle"></i> Nova</a>
		<hr />
		<?php
			echo "<i class='fa fa-user-circle'></i> ".$_SESSION['user'];
		endif;
		?>
		<span>
			<?php echo 
				isset($_SESSION['user']) ?  '<a href="#" onclick="sair();"><i class="fa fa-sign-out"></i> Sair</a>' : "<a href='includes/login.php'>Logar</a>";
			?>
		</span>
	</div>
	
	<script>

		$(function(){	
			var collapse = $("#menu-collapse");
			$(collapse).hide();
			
			$("#toggle-collapse").on('click', function(){
				$(collapse).fadeToggle(700);
			});
		});

		$(function(){
			var collapse = $("#menu-collapse-two");
			collapse.hide();
			
			$("#toggle-collapse-two").on("click", function(e){
				e.preventDefault();
				collapse.fadeToggle(500);
			});
		});

		function sair(){
			if( confirm("Deseja mesmo sair?") ){
				window.location.href = "includes/sair.php";
			}else{
				return false;
			}
		}
	</script>
	
</header>