<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../../template/head.jsp"></jsp:include>
<body onload="fecharTela();">
<jsp:include page="../../template/header.jsp">
	<jsp:param value="Timeout" name="titulo"/>
</jsp:include>

<div
	id="timeout" 
	style="text-align: center">
	<p class="mensagemAviso">
		Usu�rio n�o logado ou sess�o expirada. Por favor, acesse novamente o sistema atrav�s do portal do servidor.
	</p>
	<div
		class="ouch">
	</div>
</div>
<jsp:include page="../../template/foot.jsp"></jsp:include>
</body>
</html>