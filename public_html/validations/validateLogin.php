<?php
	
	require_once('../require/conn.php');

	if(isset($_SESSION['sessionuserprojeto'])){
		echo "<script>window.location.href = '../index.php' </script>";
	}else{
		if(isset($_POST['user'])){
			$user = $_POST['user'];
			$password = $_POST['password'];
			$remember = isset($remember) ? 1 : 0;
			$valid = "SELECT id, user, password, status, level, dateStart, id_perfil FROM login WHERE user = '".$user."' && password = '".$password."' ";
			$query = mysqli_query($con, $valid);
			$row = mysqli_num_rows($query);
			$assoc = mysqli_fetch_assoc($query);
			
			if($row == 1){
				
				$_SESSION['sessionuserprojeto'] = $assoc['user'];
				$_SESSION['sessionpasswordprojeto'] = $assoc['password'];
				$_SESSION['sessionstatusprojeto'] = $assoc['status'];
				$_SESSION['sessionlevelprojeto'] = $assoc['level'];
				$_SESSION['sessiondateStartprojeto'] = $assoc['dateStart'];
				$_SESSION['sessionidperfilprojeto'] = $assoc['id_perfil'];

				$expire = time() + (3600 * 720);

				setcookie('sessionuserprojeto', $assoc['user'], $expire);
				setcookie('sessionpasswordprojeto', $assoc['password'], $expire);
				setcookie('sessionstatusprojeto', $assoc['status'], $expire);
				setcookie('sessionlevelprojeto', $assoc['level'], $expire);
				setcookie('sessiondateStartprojeto', $assoc['dateStart'], $expire);
				setcookie('sessionidperfilprojeto', $assoc['id_perfil'], $expire);

				echo "<script>window.location.href = '../index.php'; </script>";

			}else{
				echo "<script>window.location.href = '../login.php?error=Erro ao tentar efetuar o login'; </script>";
			}

		};
	}