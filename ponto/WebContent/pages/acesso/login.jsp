<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../../template/head.jsp"></jsp:include>
<body onload="fecharTela();">
<jsp:include page="../../template/header.jsp"></jsp:include>

<h1 class="titulo">Login</h1>

<form
	id="frmLogin" 
	action="/ponto/Login" 
	class="smallForm" 
	style="width: 30%; margin-left: 35%;">
	<div class="novaLinhaFormulario">
		<label class="lblCampoFormulario" for="login">Login:</label>
		<input type="text" id="login" name="login">
	</div>
	<div class="novaLinhaFormulario">
		<label class="lblCampoFormulario" for="senha">Senha:</label>
		<input type="password" id="senha" name="senha">
	</div>
	<div class="novaLinhaFormulario">
		<input type="submit" id="btnLogin" name="btnLogin" value="Acessar o sistema">
	</div>
</form>


<jsp:include page="../../template/foot.jsp"></jsp:include>
</body>
</html>