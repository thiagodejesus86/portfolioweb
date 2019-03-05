
<?php
	
	include_once "includes/conexao.php";

	$pesquisa = $_POST['campoPesquisa'];

	$consulta = mysqli_query($con, "SELECT * FROM news WHERE titulo LIKE '%".$pesquisa."%' OR subtitulo LIKE '%".$pesquisa."%' OR texto LIKE '%".$pesquisa."%' LIMIT 10");

	$row = mysqli_num_rows($consulta);

	if( $row > 0 ){
		echo "<ul class='lista-resultados'>";
			while( $result = mysqli_fetch_array($consulta) ){
?>	
		<li>
			<a href="publicacao.php?id=<?= $result['id'] ?>">
				<p class="titulo">
					<?= $result['titulo']; ?>
				</p>
				<p class="subtitulo">
					<?php 
						if(strlen($result['subtitulo']) > 60){
							echo substr($result['subtitulo'], 0, 60)."...";	
						}else{
							echo $result['subtitulo'];
						}
					?>
				</p>
				<p class="texto">
					<?php
						if(strlen($result['texto']) > 80){
							echo substr($result['texto'], 0, 80)."...";	
						}else{
							echo $result['texto'];
						}
					?>
				</p>
			</a>
		</li>
<?php
		};
		echo "</ul>";
		echo "<p style='text-align: left; margin-top: 70px;'>Quantidade de itens localizados: ".$row."</p>";
	}else{
		echo "<p style='color: #f00;'>Desculpe mas não encontramos nada que correspondesse à sua consulta!</p>";
	}
?>