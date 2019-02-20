<?php

	

	require_once "require/header.php";

	require_once "require/menu.php";

	if(isset($_SESSION['userprojeto']) ){

		echo "<script>window.location.href = 'index.php'; </script>";

	}else{

?>

		

<?php

	}//FIM ELSE VALIDATELOGINPROJETO1


	require_once "require/footer.php";


?>
