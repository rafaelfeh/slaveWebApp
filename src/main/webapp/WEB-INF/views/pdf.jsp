<%@page import="com.amazonaws.services.pinpoint.model.Include"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page autoFlush="true" %>
<fmt:setLocale value="pt_BR" scope="application" />
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF</title>
</head>

<style>
.pdf{
	color: black;
	margin-left: 1%;
	position: absolute;
	float: left;
	font-family: sans-serif;
	}
</style>

<body>

<!-- Pagina 1 -->

<img style="width: 826px; height: 1269px; " alt="" src="/imagens/pdf.png">
<span class="pdf" Style="top: 110px; left: 650px">Status <br><b style="color: blue">${teste.status}</b></span>
<span class="pdf" Style="top: 150px; left: 80px">Código da CPI: <b>${teste.cpiID}</b></span>
<span class="pdf" Style="top: 170px; left: 80px">Data de Solicitação da tarefa: <b>${teste.dataSolicitacao}</b></span>
<span class="pdf" Style="top: 190px; left: 80px">Data de Entrega da tarefa: <b>${teste.dataEntrega}</b></span>
<span class="pdf" Style="top: 210px; left: 80px">Responsável pelo teste:<b>${teste.nomeTester}</b></span>
<span class="pdf" Style="top: 230px; left: 80px">Tempo do teste:<b>2 dias</b></span>
<span class="pdf" Style="top: 250px; left: 80px">Desenvolvedor: <b>${teste.desenvolvedor}</b></span>
<span class="pdf" Style="top: 270px; left: 80px">Teste iniciado em: <b>${teste.iniciouEm}</b></span>

<span class="pdf" Style="top: 300px; left: 80px"><h3>Informações da tarefa</h3></span>
<span class="pdf" Style="top: 350px; left: 80px">Detalhamento do teste: <br><b>${teste.detalhamentoTeste}</b></span>
<span class="pdf" Style="top: 450px; left: 80px">Resultado Esperado: <br><textarea>${teste.resultadoEsperado}</textarea></span>
<span class="pdf" Style="top: 550px; left: 80px">Passo a passo e dados sobre as etapas do teste: <br><textarea>${teste.passoApasso}</textarea></span>
<span class="pdf" Style="top: 660px; left: 80px">Resultado Real: <br><textarea>${teste.resultadoReal}</textarea></span>

</body>

<!-- Pagina 2 -->
	<br>
	<%@ include file="/../PDFImagens.jsp" %>  



</html>