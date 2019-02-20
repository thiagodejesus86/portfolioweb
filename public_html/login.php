<?php

	

	require_once "require/header.php";

	require_once "require/menu.php";

	if(isset($_SESSION['userprojeto']) ){

		echo "<script>window.location.href = 'index.php'; </script>";

	}else{

		echo $success;
		echo $error;

?>


	<div class="container">
		

		<form class="form" method="POST" action="validations/validateLogin.php">
			<div class="row">
				<label class="col-12">
					<span class="lead">Usuário</span>
					<input type="text" name="user" id="user" class="form-control" />
				</label>
				<br />
				<label class="col-12">
					<span class="lead">Senha</span>
					<input type="password" name="password" id="password" class="form-control" />
				</label>
				<label class="col-12">
					<?php if(isset($_GET['forgotsign'])){ ?>
						<a href="forgotsign.php" class="text-danger"><small>Esqueci minha senha <i class="fa fa-long-arrow-right"></i></small></a>
					<?php }else{ ?>
						<input type="checkbox" name=""> <small>Lembrar meu login</small>
					<?php }?>
				</label>
				<div class="col-12">
					<button type="submit" class="btn btn-outline-info" onclick="validaLogin()">Logar <i class="fa fa-sign-in"></i></button>
				</div>
				<div class="col-12" style="margin-top: 10px;">
					<a href="#"><small>Não tenho conta ainda <i class="fa fa-long-arrow-right"></i></small></a>
				</div>
			</div>
		</form>


	</div>

	<style type="text/css">
		.form{
			display: block;
			width: 90%;
			max-width: 300px;
			height: auto;
			border: 1px solid #ccc;
			border-radius: 5px;
			padding: 30px;
			margin: 0 auto;
			margin-top: 50px;
		}
		input.form-control{
			border-top: none;
			border-left: none;
			border-right: none;
			border-radius: 0;
		}
		input::focus{
			outline: 0;
			border: 0;
			box-shadow: 0;
		}
	</style>

	<script>
		
	</script>


<?php

	}//FIM ELSE VALIDATELOGINPROJETO1


	require_once "require/footer.php";


?>