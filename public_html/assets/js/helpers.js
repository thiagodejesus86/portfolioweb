
//FORMULÁRIO DE LOGIN
function logIn(){

	if($("#user").val() !== "" && $("#password").val() !== "" ){
		$.ajax({
			url : "validaLogin.php",
			data : {
				user : $("#user").val(),
				password : $("#password").val()
			},
			type : "POST",
			success : function(retorno){
				if(retorno == 1){
					$("#formLogin").html("<h1 id='tituloForm'>Usuario logado com sucesso!</h1><a href='../index.php' class='botaoForm'><i class='fa fa-reply'></i> Voltar</a>");
				}else{
					alert("Erro: " + retorno);
				}
			}
		});
	}else{
		if($("#user").val() == ""){
			$("#user").css({"border-color" : "#c00"});
			$("#user").focus();
			setInterval(function(){
				$("#user").css({"border-color" : "#646"});
			}, 1300);
		}else if($("#password").val() == ""){
			$("#password").css({"border-color" : "#c00"});
			$("#password").focus();
			setInterval(function(){
				$("#password").css({"border-color" : "#646"});
			}, 1300);
		};
		alert("Existe campo em branco. Favor preencher!");
		return false;
	}
}


/* JANELA MODAL */
function janelaModal(url){
	$("#maskjanelaModal").show();
	$("#fecharModal").on('click', function(){
		$("#maskjanelaModal").hide();
	});
	$.ajax({
		url : url,
		success : function(retorno){
			$("#contentModal").html(retorno);
		}
	});
}