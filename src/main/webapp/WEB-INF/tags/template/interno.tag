<%@tag import="java.util.Calendar"%>
<%@tag import="java.util.Date"%>
<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@attribute name="extraRodape" fragment="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title></title>

<link href="<c:url value='/assets/fonts/stylesheet.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/jquery-ui.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/jquery-ui.theme.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/jquery-ui.structure.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/jquery.datetimepicker.min.css'/>" rel="stylesheet" >
<link href="<c:url value='/assets/css/bkp/displaytag.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/bkp/toastr.min.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/bkp/remodal.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/bkp/remodal-default-theme.css'/>" rel="stylesheet" />
<link href="<c:url value='/assets/css/summernote.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/assets/css/bkp/jquery-confirm.min.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/bootstrap-colorpicker.css'/>" rel="stylesheet" />

<link href="<c:url value='/assets/css/asPieProgress.css'/>" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" >
<link href="<c:url value='/assets/css/bootstrap.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/daterangepicker.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/custom.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/uploadifive.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/select2.css'/>" rel="stylesheet">
<link href="<c:url value='/assets/css/fontawesome-iconpicker.css'/>" rel="stylesheet">


<script type="text/javascript" src="<c:url value='/assets/js/jquery.js'/>"></script>

<jsp:invoke fragment="extraStyles"/>
</head>

<body">



<jsp:doBody />


<script type="text/javascript" src="<c:url value='/assets/js/jquery-ui.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/canvasjs.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery.cookie.js'/>"></script>

<script type="text/javascript" src="<c:url value='/assets/js/remodal.js'/>"></script>

<script type="text/javascript" src="<c:url value='/assets/js/jquery.maskMoney.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery.masknumber.js'/>"></script>
<!-- include summernote css/js-->
<script type="text/javascript" src="<c:url value='/assets/js/summernote.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/summernote-pt-BR.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery.uploadifive.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery-confirm.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/bootstrap-colorpicker.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/selection.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery-asPieProgress.js'/>"></script>

<script type="text/javascript" src="<c:url value='/assets/js/chart.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery.easypiechart.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/bootstrap-progressbar.min.js'/>"></script>
<!--Novo scripts-->
<script type="text/javascript" src="<c:url value='/assets/js/icheck.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/skycons.js'/>"></script> 
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="<c:url value='/assets/js/daterangepicker.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/custom.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/jquery.datetimepicker.full.js'/>"></script>

<script type="text/javascript" src="<c:url value='/assets/js/select2.full.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/select2.pt-BR.js'/>"></script>

<script type="text/javascript" src="<c:url value='/assets/js/fontawesome-iconpicker.js'/>"></script>


<jsp:invoke fragment="extraScripts"/>

<jsp:invoke fragment="extraRodape"/>

</body>
</html>
