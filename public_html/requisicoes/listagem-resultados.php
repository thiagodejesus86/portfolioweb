<?php

	require_once "../includes/conexao.php";

	isset($_GET['max']) ? $max = $_GET['max'] : $max = 3;
					
	$recente = mysqli_query($con, "SELECT * FROM news ORDER BY data DESC LIMIT 0, $max");
	
	$linha = mysqli_num_rows($recente);
	
	while($rec = mysqli_fetch_assoc($recente)){

?>
		<div style="padding: 0; margin: 30px 0; border-bottom: 1px solid #eee;" class="exibe-resultados">
			<h3 style="color: #646; font-size: 12pt"><?= $rec['titulo'] ?></h3>
			<p>
				<small style="font-size: 8pt; color: #aaa">
					<i class="fa fa-calendar-o"></i> 
					<?= date('m/Y', strtotime($rec['data'])) ?>
				</small>
			</p>
			<p class="texto-publicacao">&bull; <?= substr($rec['texto'], 0, 70)."..." ?>
				<a href="publicacao.php?id=<?= $rec['id'] ?>">Ver</a>
			</p>
		</div>

<?php
	
	};//FIM WHILE
		echo "<p>Exibindo ". $linha." resultados.</p>";
		echo $max > $linha ? "Fim dos resultados" : "<br /><button class='btn btn-green' onclick='exibeResultados(".($max + 3).")'>Exibir mais...</button>";
		