<?php

	require_once('../require/conn.php');

	unset($_SESSION['sessionuserprojeto']);
	unset($_SESSION['sessionpasswordprojeto']);
	unset($_SESSION['sessionstatusprojeto']);
	unset($_SESSION['sessionlevelprojeto']);
	unset($_SESSION['sessiondateStartprojeto']);
	unset($_SESSION['sessionidperfilprojeto']);

	echo "<script>window.location.href = '../index.php'; </script>";
