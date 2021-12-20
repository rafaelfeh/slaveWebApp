function newXMLHttpRequest(){
	var xmlhttp = false;
	try{
		xmlhttp = new XMLHttpRequest();
	}catch(ee){
		try{
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}catch(E){
				xmlhttp = false;
			}
		}
	}

	return xmlhttp;
}

function alteraMascara(campo){
	$("#"+campo).mask("9999-999-9999");
}

function getDocHeight() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollHeight, D.documentElement.scrollHeight),
        Math.max(D.body.offsetHeight, D.documentElement.offsetHeight),
        Math.max(D.body.clientHeight, D.documentElement.clientHeight)
    );
}
