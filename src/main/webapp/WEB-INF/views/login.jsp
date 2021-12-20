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
	<c:if test="${3 > 2}">
		<div style="color: red; <c:if test="${message != null}">background-color: orange</c:if>" class="alert danger">${message}</div>
		<div><img style="width: 80%; margin-left: 10%" alt="" src="/imagens/3504848.png"></div>
		<div><h1 style="text-align: center">Q.A JUI</h1></div>
		<section class="login_content" style="height:  370px;">
            <form action="/login" method="post">
               <div style="text-align: justify; font-size: 13px">
                	<label style="color: #001438">Login</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="text" name="nome" id="login" class="form-control">
              	</div>
                <div style="text-align: justify;font-size: 13px">
                	<label style="color: #001438">Senha</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="password" 
                	name="senha" id="senha" class="form-control">
             	</div>
                <div >
                	<input style="background-color: gray; border-radius: 25px; border:
                	 2px solid gray; margin-left: 40%" name="submit" type="submit" class="btn btn-default btn-primary" value="Entrar">
               	</div>
            </form>
            <a href="/novoUsuario" style="float: right; color: gray">registrar usuário</a>
            <div class="clearfix"></div>
            <div class="separator">
                <div>
                    <p class="font-14"><a href="http://www.rafaelfeh.com/" target="_blank">Copyright © 2021 - Rafael.</a>
                    <br>Todos os direitos reservados.</p>
                </div>
            </div>
		</section>
		</c:if>
	</div>	
</div>
</body>
</html>



