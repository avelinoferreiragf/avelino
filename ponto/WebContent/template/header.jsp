<%@page import="br.jus.trerj.ponto.presentation.SessaoUtil"%>
<div id="logo">
	<div id="logoImage"></div>
	<div class="titulo">Ponto Eletr�nico</div>
	<a id="divSair" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<div>Sair</div>
	</a>
</div>
<div id="menu" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
	<div id="menuPrincipal">
		<div class="menuItemPrincipal">
			<div class="menuTitulo">
				Registro de Ponto
			</div>
			<div class="menuSubItem">
				<a>Registrar Ponto</a>
				<a>Espelho de Ponto</a>
			</div>
		</div>
		<div class="menuItemPrincipal">
			<div class="menuTitulo">
				Solicita��es
			</div>
			<div class="menuSubItem">
				<a>Solicita��o de Inclus�o de Ponto</a>
				<a>Ver solicita��es</a>
				<a>Cancelar solicita��es</a>
			</div>
		</div>
		<div class="menuItemPrincipal">
			<div class="menuTitulo">
				Gest�o de solicita��es de servidores
			</div>
			<div class="menuSubItem">
				<a>Ver solicita��es de Subordinados</a>
			</div>
		</div>
	</div>
	<div id="menuFill"></div>
</div>
<div id="corpo">
	<div id="msgsErroMinimizada">
		<div id="imgMsgsErroMinimizada"></div>
		<div>Clique aqui para rever erros.</div>
	</div>
	<div id="tituloPagina">
		<h1 class="titulo"><%= (request.getParameter("titulo") != null ? request.getParameter("titulo") : request.getParameter("titulo")) %></h1>
	</div>
	<div style="clear: both;"></div>
	<div id="msgsErro" class="msgsContainer" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<div id="imgErro"></div>
		<div id="msgErroAviso">Ocorreu um erro ao processar a sua requisi��o</div>
		<div class="itensMsg"><%= (request.getAttribute("ERRO") != null ? request.getAttribute("ERRO") : "") %></div>
		<div class="msgFechar">
			<input id="btnFecharMsgsErro" type="button" value="Esconder alerta" />
		</div>
		
	</div>
	<div id="msgsSucesso" class="msgsContainer" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<div id="imgSucesso"></div>
		<div class="itensMsg"><%= (request.getAttribute("SUCESSO") != null ? request.getAttribute("SUCESSO") : "") %></div>
		<div id="btnFecharMsgsErro" class="msgFechar">
			<input type="button" value="Fechar Mensagem"/>
		</div>
	</div>
	<div id="bodyContent">
