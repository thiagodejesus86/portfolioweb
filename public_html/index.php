<?php
	

	require_once "require/header.php";

	if(!isset($_SESSION['sessionuserprojeto'])){
		echo "<script>window.location.href = './login.php' </script>";
	}

	require_once "require/menu.php";

	define("DS", DIRECTORY_SEPARATOR);

	$dirImg = "assets" . DS . "img";

	$scan = scandir($dirImg);

?>


	<div class="container-fluid" style="padding: 50px">

		<h1 class="display-4 text-center">Gerenciamento de imagens com PHP</h1>

		<hr />

		<br />

		<?php

			echo $success;
			echo $error;

		?>

		<form class="form-inline" id="pesquisar">
			
		</form>

		<form action="validations/validateSendImage.php" method="POST" class="form-inline" enctype="multipart/form-data">
			<input type="file" name="sendimage" id="sendimage" class="form-control" placeholder="Insere imagem" />
			<button type="submit" class="btn btn-outline-info"><i class="fa fa-send"></i></button>
		</form>

		<hr />

		<p class="lead text-default"><strong>Clique duas vezes sobre as imagens para exibir em nova guia, ou então, clique sobre o ícone de pasta abaixo de cada imagem</strong></p>


<?php

	if ( $scan ){

		echo "<div class='row'>";
		
		foreach($scan as $key => $value){

			//ATUALIZAR A IMAGEM
			if(isset($_GET['newname'])){
				$oldname = "assets/img/".$_GET['oldname'];
				$newname = "assets/img/".$_GET['newname'];
				$rname = rename($oldname, $newname);
				if($rname){
					echo "<script>window.location.href = 'index.php?success=Atualizado com sucesso!'; </script>";
				}
			}

			//APAGA A IMAGEM
			if(isset($_GET['deleteimage'])){
				$u = unlink("assets/img/".utf8_decode($_GET['deleteimage']));
				echo $u ? "<script>window.location.href = 'index.php'; </script>" : "";
			}


			if($value !== "." && $value !== ".."){
?>
	
		<figure class="col-md-3" style="border: 1px solid #eee; margin: 5px; padding: 10px;">
			<img src="assets/img/<?= $value ?>" width="200" name="<?= $value ?>" ondblclick="window.open(this.src)" title="Clique duas vezes sobre a imagem para abrir em nova guia" />
			<figcaption style="padding: 7px 0;">
				<?php
					if(isset($_GET['edit']) && $_GET['edit'] == utf8_encode($value) ){
				?>
					<input type='text' value='<?= utf8_encode($value) ?>' class='form-control input-name-image' />
					<button class='btn btn-outline-info' onclick='window.history.back()'><i class='fa fa-reply'></i></button>
					<button class='btn btn-outline-info' onclick="saveImage('<?= utf8_encode($value) ?>')"><i class='fa fa-save'></i></button>
				<?php
					}else{
				?>
					<p><?= $value ?></p>
					<button class='btn btn-outline-info' onclick="editImage('<?= utf8_encode($value) ?>')" title="Editar o nome do arquivo <?= utf8_encode($value) ?>"><i class="fa fa-pencil"></i></button>
					<button class='btn btn-outline-danger' onclick="deleteImage('<?= utf8_encode($value) ?>')" title="Apaga a imagem <?= utf8_encode($value) ?>"><i class="fa fa-close"></i></button>
					<button class="btn btn-outline-info" onclick="window.open('<?= 'assets/img/' . utf8_encode($value) ?>')"><i class="fa fa-folder-open"></i></button>
					<a href="<?= 'assets/img/'.$value ?>" class="btn btn-outline-info" download><i class="fa fa-download"></i></a>
				<?php 
					};
				?>
			</figcaption>
		</figure>

<?php
			};
		};

		echo "</div>";//CONTAINER
	}

?>
	</div> <!-- CONTAINER -->

	<script>
		function editImage(e){
			window.location.href = "?edit="+e;
		}

		function saveImage(o){
			if(confirm("Alterar o nome da imagem")){
				var n = $(".input-name-image").val();
				window.location.href = "?oldname="+o+"&newname="+n;
			}
		}
		function deleteImage(d){
			if(confirm("Tem certeza que você deseja apagar a imagem?") ){
				window.location.href = "?deleteimage="+d;
			}
		}
	</script>

<?php

	require_once "require/footer.php";
