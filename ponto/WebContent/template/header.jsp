<%@page import="br.jus.trerj.ponto.presentation.SessaoUtil"%>
<div id="logo">
	<div class="titulo">Ponto Eletr�nico</div>
	<a id="divSair" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<img src="/ponto/images/logout.png" alt="Sair do Sistema" />
		Sair do Sistema
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
	<div id="msgsErro" class="msgsContainer" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<div id="msgErroAviso">Ocorreu um erro ao processar a sua requisi��o</div>
		<div class="msgFechar">
			<img 
				src="/ponto/images/close.png"
				alt="Fechar mensagens de erro"
				title="Fechar mensagens de erro"
				width="32px"
				height="32px" />
		</div>
		<div class="itensMsg"><%= (request.getAttribute("ERRO") != null ? request.getAttribute("ERRO") : "") %></div>
	</div>
	<div id="msgsSucesso" class="msgsContainer" style="<%= SessaoUtil.getDisplayTypeRequiredLogonItens(request)%>">
		<div class="msgFechar">
			<img 
				src="/ponto/images/close.png"
				alt="Fechar mensagens de sucesso"
				title="Fechar mensagens de sucesso"
				width="32px"
				height="32px" />
		</div>
		<div class="itensMsg"><%= (request.getAttribute("SUCESSO") != null ? request.getAttribute("SUCESSO") : "") %></div>
	</div>
	<div id="bodyContent">
