<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page autoFlush="true" %>
<fmt:setLocale value="pt_BR" scope="application" />
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login</title>
<link href="<c:url value='/assets/fonts/stylesheet.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/fontawesome.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/bootstrap.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/custom.css'/>" rel="stylesheet">
<body class="login" style="background-color: #3c065e; background-image: url(/imagens/3504847.png); background-size: 100%; background-repeat: no-repeat">
<div class="login_wrapper">
	<div class="animate form login_form" style="margin-left: 150%">
			
		<!--CADASTRA USUARIOS -->
		<div class="cadastroUsuario">
		<c:if test="${message != null}">
		<div style="color: red; <c:if test="${message != null}">background-color: orange</c:if>" class="alert danger">
		${message}</div></c:if>
		<c:if test="${concluido != null}">
		<div style="color: white; <c:if test="${concluido != null}">background-color: green</c:if>" class="alert danger">
		${concluido}</div></c:if>
		<section class="login_content" style="height:  500px;">
			<div><h1>Cadastro de usuário</h1></div>
            <form action="/registrarUsuario" method="post">
            
                <div style="text-align: justify;">
                	<label style="color: #1a6bff">Hash de ativação</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="text" name="hash" id="hash" class="form-control">
              	</div>
                <div style="text-align: justify;">
                	<label style="color: #1a6bff">Login</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="text" name="nome" id="login" class="form-control">
              	</div>
                <div style="text-align: justify;" >
                	<label style="color: #1a6bff">Senha</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="password" name="senha" id="senha" class="form-control">
             	</div>
                <div >
                	<input style="background-color: purple; border-radius: 25px; border: 2px solid gray; margin-left: 40%" name="submit" type="submit" class="btn btn-default btn-primary" value="Salvar">
               	</div>
            </form>
            <div class="separator">
                           	<a href="/" style="padding-top: 8px; color:black;  padding-bottom: 8px; padding-left: 10px; padding-right: 10px; margin-top: 100px"> Voltar </a>
                <div>
                </div>
            </div>
		</section>
		</div>
	</div>	
</div>
</body>
</html>

