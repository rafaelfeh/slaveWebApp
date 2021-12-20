<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF</title>
</head>

<style>
.pdf1{
	color: black;
	margin-left: 1%;
	position: absolute;
	float: left;
	font-family: sans-serif;
	}
textarea {
border: none;
background-color: transparent;
outline: none;
}	

.dataTable {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  color: black;
  margin-left: 10px;
  margin-top: 20px;
  margin-bottom: 10px;
  
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 20px;
  width: 280px;
  height: 10px;
    
}

tr:nth-child(even) {
  background-color: #e8e8e8;
}

</style>

<c:set var="pagA" value="1"/> 
<c:forEach items="${imsDesc}" var="i">
<body>

<c:if test="${i.testeID == teste.testeID && i.testeID != null}">																			

<img style="width: 900px; height: 500px; margin-left: 50px; border-style: solid " src="${i.url}">
<span style="float: right; color: blue">Pagina:<b>${i.pagina}</b></span><br>
<br><br>
<textarea disabled style="margin-left: 50px; width: 800px; font-size: 30px; font-family: sans-serif;">${i.descricao}</textarea><br>

</c:if>


</div>
</body>
</c:forEach>
</html>