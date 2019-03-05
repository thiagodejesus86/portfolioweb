<?php
	
	require_once "../includes/conexao.php";

	$sql = mysqli_query($con, "SELECT * FROM news ORDER BY data DESC LIMIT 5");

	echo "<h3 style='font-size: 16pt;'>Últimas 5 notícias:</h3><br /><br />";

	while($result = mysqli_fetch_array($sql)){
		echo 
			"<h3 style='color: #989; font-size: 14pt;'><i class='fa fa-newspaper-o'></i> ".$result['titulo']."</h3>";
		echo
			"<p style='font-size: 10pt; color: #444'>";
		echo
			strlen($result['texto']) > 100 ? 
			substr($result['texto'], 0, 100)."..." : 
			 $result['texto'];
		echo 
			" </p>";
		echo
			"<p style='margin-top: 10px'><a href='publicacao.php?id=".$result['id']."' style='font-size: 10pt; color: #646; text-decoration: underline;;'><i class='fa fa-eye'></i> Ver notícia</a></p>";
		echo
			"<br />
			<hr style='border: none; background: #eee; height: 1px;' />
			<br />";
	}