<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:interno>


<div class="animate form login_form" style="margin-left: 150%">
	<div style="color: red; " class="alert danger"></div>
		<div><img style="width: 80%; margin-left: 10%" alt="" src="/imagens/3504848.png"></div>
		<div><h1 style="text-align: center">Q.A JUI</h1></div>
		<section class="login_content" style="height:  370px;">
            <form action="/login" method="get">
               <div style="text-align: justify; font-size: 13px">
                	<label style="color: #001438">Login</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="text" name="nome" id="login" class="form-control">
              	</div>
                <div style="text-align: justify;font-size: 13px">
                	<label style="color: #001438">Senha</label>
                	<input style="border-radius: 5px; border: 2px solid #1450A2;" type="password" name="senha" id="senha" class="form-control">
             	</div>
                <div>
                	<input style="background-color: gray; border-radius: 25px; border:
                	 2px solid gray; margin-left: 40%" name="submit" type="submit" class="btn btn-default btn-primary" value="Entrar">
               	</div>
            </form>
            <a href="#" onclick="registraUsuario()" style="float: right; color: gray">registrar usuário</a>
            <div class="clearfix"></div>
            <div class="separator">
                <div>
                    <p class="font-14"><a href="http://www.rafaelfeh.com/" target="_blank">Copyright © 2021 - Rafael.</a>
                    <br>Todos os direitos reservados.</p>
                </div>
            </div>
		</section>
	</div>


</template:interno>


