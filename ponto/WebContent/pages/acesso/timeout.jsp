<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../../template/head.jsp"></jsp:include>
<body onload="fecharTela();">
<jsp:include page="../../template/header.jsp"></jsp:include>

<div style="text-align: center">
	<p style="font-size: 20px; font-weight: bold; text-align: center;">Usuário não logado ou sessão expirada.</p>
	<img 
		alt="Usuário não logado ou sessão expirada" 
		title="Usuário não logado ou sessão expirada" 
		src="/ponto/images/ouch_128.png"
		style="margin: 0px auto;"
		width="128px"
		height="128px" />
</div>
<jsp:include page="../../template/foot.jsp"></jsp:include>
</body>
</html>