<style type="text/css">
	.bloco-comentarios{
		display: block;
		width: 100%;
		height: auto;
		border-bottom: 1px solid #eaeaea;
		background: #fefefe;
		padding: 10px;
	}
	.bloco-comentarios img,
	.bloco-comentarios figcaption{
		display: inline-block;
		vertical-align: top;
		margin-right: -3px;
	}
	.bloco-comentarios img{
		width: 50px;
		height: 50px;
		border: 1px solid #fff;
		outline: none;
		box-shadow: 3px 3px 5px #ccc;
	}
	.bloco-comentarios figcaption{
		width: calc(100% - 50px);
		padding-left: 10px;
	}
	.texto-user,
	.texto-data{
		font-size: 9pt;
		color: #aaa;
	}
	.texto-comentario{
		font-size: 10pt;
		color: #404;
	}
</style>

<?php

	include_once "../includes/conexao.php";
	
	$id = $_REQUEST['id'];

	$noticias = 
		mysqli_query($con, 
		"SELECT co.id, co.comentario, co.comentario_user, co.data_comentario AS data, co.id_news
		FROM comentarios co
		INNER JOIN news n
		ON co.id_news = n.id
		INNER JOIN user_login lo
		ON co.comentario_user = lo.user
		WHERE co.id_news = $id
		ORDER BY co.data_comentario DESC
		");		
		
		$row = mysqli_num_rows($noticias);
								
		if($row > 0){
								
			while($com = mysqli_fetch_assoc($noticias)){
		
		?>

		<figure class="bloco-comentarios">
			<img src="" />
			<figcaption class="bloco-texto-comentario">
				<p class="texto-user"><?= $com['comentario_user'] ?></p>
				<p class="texto-data"><?= date('d/m/Y - H:i', strtotime($com['data'])); ?></p>
				<p class="texto-comentario"><?= $com['comentario'] ?></p>
			</figcaption>
		</figure>
			
		<?php
			};
		};
		
		
		
		
		
		