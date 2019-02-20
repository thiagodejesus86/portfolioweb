	
	<nav id="topo">
		<div class="container" id="menuBar">
			<div class="row">
				<div class="col-4" id="logo">
					<a href="index.php">Thiago Developer</a>
				</div>
				<div class="col-4 text-center">
					<?php
						if(isset($_SESSION['sessionuserprojeto'])){
							echo $_SESSION['sessionuserprojeto']." <a href='validations/signout.php'>Sair <i class='fa fa-sign-out'></i></a>";
						}else{
							echo "<a href='login.php'>logar <i class='fa fa-sign-in'></i></a>";
						}
					?>
				</div>
				<div class="col-4 text-right">
					<div class="bars" title="Menu">
						<div class="bar1"></div>
						<div class="bar2"></div>
						<div class="bar3"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="menu">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="?link=2">Item 2</a></li>
				<li><a href="?link=3">Item 3</a></li>
				<li><a href="?link=4">Item 4</a></li>
				<li><a href="?link=5">Item 5</a></li>
			</ul>
		</div>
	</nav>

	<script>
		$(".bars").on("click", function(){
			$("#menu").toggleClass("show");
			$(".bar1").toggleClass("bar-left");
			$(".bar2").toggleClass("bar-hide");
			$(".bar3").toggleClass("bar-right");
		});
	</script>
