<%@page import="br.jus.trerj.ponto.presentation.SessaoUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../../template/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"  href="/ponto/css/verSolicitacoes.css" lang="css">
<link rel="stylesheet" type="text/css"  href="/ponto/css/avaliacao.css" lang="css">

<body>
<jsp:include page="../../template/header.jsp">
	<jsp:param value="Tabela" name="titulo"/>
</jsp:include>
<form action="/ponto/Cancelar" method="POST">
	<input type="hidden" id="idPedido" name="idPedido">
	<div id="msgCancelamento" class="msgsContainer">
		<div id="imgCancelamento"></div>
		<div id="msgCancelamentoItens"></div>
		<div class="msgFechar">
			<input id="btnConfirmarCancelamento" type="submit" value="Confirmar" />
			<input id="btnFecharCancelamento" type="button" value="Cancelar" />
		</div>
	</div>
</form>
<form id="frmAvaliacao" action="/ponto/Avaliar" method="POST">
	<input type="hidden" id="idPedidoAvaliado" name="idPedidoAvaliado" />
	<input type="hidden" id="indexNaTabela" name="indexNaTabela" />
	<div id="msgAvaliar" class="msgsContainer">
		<div id="imgAvaliar"></div>
		<div id="msgAvaliacaoItens"></div>
		<div id="divJustificativaIndeferimento">
			<span id="spanJustificativaIndeferimento">Informe o motivo do indeferimento no campo abaixo:</span>
			<textarea 
				id="justificativaIndeferimento" 
				name="justificativaIndeferimento"
				>${justificativaIndeferimento}</textarea>
		</div>
		<div class="msgFechar">
			<input id="btnConfirmarAvaliacao" type="submit" value="Confirmar" />
			<input id="btnCancelar" type="button" value="Cancelar" />
		</div>
	</div>
</form>
<table id="tblAvaliacao">
	<thead>
		<tr>
			<th>Cabeçalho</th>
			<th>B</th>
			<th>Viande</th>
			<th>Poisson</th>
			<th>Boison</th>
			<th>etc</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Texto</td>
			<td id="tdDia">03/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao">14:00</td>
			<td id="tdTipoSolicitacao">Alteração</td>
			<td>
				<span id="spanIdPedido" style="display:none;">1</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">2</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">3</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">4</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">5</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">6</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">7</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">05/04/2012</td>
			<td id="tdMarcacaoCorrente">12:00</td>
			<td id="tdNovaMarcacao"></td>
			<td id="tdTipoSolicitacao">Exclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">8</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">04/04/2012</td>
			<td id="tdMarcacaoCorrente"></td>
			<td id="tdNovaMarcacao">14:00</td>
			<td id="tdTipoSolicitacao">Inclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">9</span>
				<div class="cancelar" title="Cancelar Solicitação"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">04/03/2012</td>
			<td id="tdMarcacaoCorrente"></td>
			<td id="tdNovaMarcacao">14:00</td>
			<td id="tdTipoSolicitacao">Inclusão</td>
			<td>
				<span id="spanIdPedido" style="display:none;">10</span>
				<div class="deferir" title="Deferir"></div>
				<div class="indeferir" title="Indeferir"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td id="tdDia">14/12/2012</td>
			<td id="tdMarcacaoCorrente">10:00</td>
			<td id="tdNovaMarcacao">09:00</td>
			<td id="tdTipoSolicitacao">Alteração</td>
			<td>
				<span id="spanIdPedido" style="display:none;">11</span>
				<div class="deferir" title="Deferir"></div>
				<div class="indeferir" title="Indeferir"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td>12:00</td>
			<td></td>
			<td>Boef</td>
			<td>Eau</td>
			<td>
			<span id="spanIdPedido" style="display:none;">11</span>
				<div class="deferir" title="Deferir"></div>
				<div class="indeferir" title="Indeferir"></div>
			</td>
		</tr>
		<tr>
			<td>Texto</td>
			<td>12:00</td>
			<td></td>
			<td>Boef</td>
			<td>Eau</td>
			<td>
				<div class="deferir" title="Deferir"></div>
				<div class="indeferir" title="Indeferir"></div>
			</td>
		</tr>
	</tbody>
</table>
<jsp:include page="../../template/foot.jsp"></jsp:include>
<script src="/ponto/js/verSolicitacoes.js" type="text/javascript"></script>
<script src="/ponto/js/avaliacao.js" type="text/javascript"></script>
<c:if test = "${erroAoIndeferir eq true}">
	<script type="text/javascript">
		recuperarTelaIndeferimentoAposErro(${indexNaTabela});
	</script>
</c:if>

</body>
</html>