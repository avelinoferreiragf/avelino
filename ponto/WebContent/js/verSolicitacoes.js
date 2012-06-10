$(document).ready(function(){
	$(".cancelar").click(btnCancelarHandlerClick);
	$("#btnFecharCancelamento").click(msgFecharCancelamentoHandlerClick);

});

function btnCancelarHandlerClick(eventData){
	var tr = $(this).parent().parent();
	var dia = tr.find("#tdDia").text();
	var marcacaoCorrente = tr.find("#tdMarcacaoCorrente").text();
	var novaMarcacao = tr.find("#tdNovaMarcacao").text();
	var tipoSolicitacao = tr.find("#tdTipoSolicitacao").text();
	var idPedido = $(this).parent().find("#spanIdPedido").text();
	var msg = "";
	if(tipoSolicitacao == "Altera��o"){
		var msgAlteracao = "Confirma o cancelamento da solicita��o de altera��o de marca��o do dia {0} de {1} para {2}?";
		msg = msgAlteracao.replace("{0}", dia).replace("{1}", marcacaoCorrente).replace("{2}", novaMarcacao);
	} else if(tipoSolicitacao == "Inclus�o"){
		var msgInclusao = "Confirma o cancelamento da solicita��o de inclus�o de marca��o do dia {0} �s {1}?";
		msg = msgInclusao.replace("{0}", dia).replace("{1}", novaMarcacao);
		
	}else if(tipoSolicitacao == "Exclus�o"){
		var msgExclusao = "Confirma o cancelamento da solicita��o de exclus�o de marca��o do dia {0} �s {1}?";
		msg = msgExclusao.replace("{0}", dia).replace("{1}", marcacaoCorrente);
	}
	$("#msgCancelamentoItens").text(msg);
	$("#idPedido").val(idPedido);
	$("#msgCancelamento").show();
	window.scrollTo(0, 0);
}
function msgFecharCancelamentoHandlerClick(eventData){
	$("#msgCancelamento").hide();
}
