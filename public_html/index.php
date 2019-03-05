<?php 
	
	include_once('includes/head.php');

	include_once("includes/conexao.php");

	include_once('includes/header.php');

?>

	<style type="text/css">
		.forTop{
			top: 50px !important; 
			transition: all, .4s ease-in-out;
			-webkit-transition: all, .4s ease-in-out;
			-moz-transition: all, .4s ease-in-out;
			-ms-transition: all, .4s ease-in-out;
		}
	</style>

	<section id="main">

		<div id="conteudo-principal">
			<h1>BUS<i class="fa fa-search" style="color: #fc0"></i>UEI</h1>
			<form action="resultadoPesquisa.php" method="GET" id="pesquisa">
				<input type="text" name="pesquisa" id="campoPesquisa" autocomplete="off" />
				<input type="hidden" name="min" value="0" />
				<button type="submit"><i class="fa fa-search"></i></button>
			</form>
			<h5>&copy;Thiago de Jesus</h5>

			<div id="resultadoBusca"></div>

			<script type="text/javascript">

				var campoPesquisa = $("#campoPesquisa");
				
				$(campoPesquisa).keyup(function(){

					if($(campoPesquisa).focus() && $(campoPesquisa).val() != ""){
						$("#conteudo-principal").addClass("forTop");
					}else{
						$("#conteudo-principal").removeClass("forTop");
					};

					if( $(campoPesquisa).val() != "" ){
						
						$.ajax({
							url : "resultadoBusca.php",
							type : 'post',
							//dataType : 'json',
							data : {
								campoPesquisa : $("#campoPesquisa").val()
							},
							success : function(result){
								$("#resultadoBusca").html(result);
							}
						});
					}else{
						$("#resultadoBusca").html("");
					};
				});
			</script>
			
		</div>

	</section>
	
	<?php include_once("includes/footer.php"); ?>
	
	