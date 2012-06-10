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
	if(tipoSolicitacao == "Alteração"){
		var msgAlteracao = "Confirma o cancelamento da solicitação de alteração de marcação do dia {0} de {1} para {2}?";
		msg = msgAlteracao.replace("{0}", dia).replace("{1}", marcacaoCorrente).replace("{2}", novaMarcacao);
	} else if(tipoSolicitacao == "Inclusão"){
		var msgInclusao = "Confirma o cancelamento da solicitação de inclusão de marcação do dia {0} às {1}?";
		msg = msgInclusao.replace("{0}", dia).replace("{1}", novaMarcacao);
		
	}else if(tipoSolicitacao == "Exclusão"){
		var msgExclusao = "Confirma o cancelamento da solicitação de exclusão de marcação do dia {0} às {1}?";
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
