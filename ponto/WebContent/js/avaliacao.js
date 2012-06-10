$(document).ready(function(){
	$(".deferir").click(btnDeferirHandlerClick);
	$(".indeferir").click(btnIndeferirHandlerClick);
	$("#msgAvaliar input[type='button']").click(msgFecharAvaliacaoHandlerClick);
});

function btnDeferirHandlerClick(eventData){
	var imgClass = "imgDeferir";
	var btnValue = "Confirmar Deferimento";
	var action = "DeferirPedidoAbono";
	$("#divJustificativaIndeferimento").hide();
	btnAvaliarHandlerClick($(this), imgClass, btnValue, action);
}
function btnIndeferirHandlerClick(){

	indeferir($(this));
}
function recuperarTelaIndeferimentoAposErro(index){
	index++;
	var item = $("#tblAvaliacao tbody tr:nth-child(" + index+ ")").find(".indeferir");
	indeferir(item);
}
function indeferir(caller){
	var imgClass = "imgIndeferir";
	var btnValue = "Confirmar Indeferimento";
	var action = "IndeferirPedidoAbono";
	$("#divJustificativaIndeferimento").show();
	btnAvaliarHandlerClick(caller, imgClass, btnValue, action);
}
function btnAvaliarHandlerClick(button, imgClass, btnValue, action){
	var tr = button.parent().parent();
	var dia = tr.find("#tdDia").text();
	var marcacaoCorrente = tr.find("#tdMarcacaoCorrente").text();
	var novaMarcacao = tr.find("#tdNovaMarcacao").text();
	var tipoSolicitacao = tr.find("#tdTipoSolicitacao").text();
	var idPedido = $(this).parent().find("#spanIdPedido").text();
	var msg = "";
	
	if(tipoSolicitacao == "Alteração"){
		var msgAlteracao = btnValue + " da solicitação de alteração de marcação do dia {0} de {1} para {2}?";
		msg = msgAlteracao.replace("{0}", dia).replace("{1}", marcacaoCorrente).replace("{2}", novaMarcacao);
	} else if(tipoSolicitacao == "Inclusão"){
		var msgInclusao = btnValue + " da solicitação de inclusão de marcação do dia {0} às {1}?";
		msg = msgInclusao.replace("{0}", dia).replace("{1}", novaMarcacao);
		
	}else if(tipoSolicitacao == "Exclusão"){
		var msgExclusao = btnValue + " da solicitação de exclusão de marcação do dia {0} às {1}?";
		msg = msgExclusao.replace("{0}", dia).replace("{1}", marcacaoCorrente);
	}
	$("#indexNaTabela").val(tr.index());
	$("#imgAvaliar").attr("class", imgClass);
	$("#btnConfirmarAvaliacao").val(btnValue);
	$("#frmAvaliacao").attr("action", "/ponto/" + action);
	$("#msgAvaliacaoItens").text(msg);
	$("#idPedidoAvaliado").val(idPedido);
	$("#msgAvaliar").show();
	window.scrollTo(0, 0);
}
function msgFecharAvaliacaoHandlerClick(eventData){
	$("#msgAvaliar").hide();
	$("#indexNaTabela").val(null);
	$("#idPedidoAvaliado").val(null);
	$("#justificativaIndeferimento").val("");
}
