

function validaEsalva(button){
	
	var $form = $(button).closest('form');
	var passou = valida(button);
	//alert($form.attr('action'));
	if(passou){
		$(button).prop('disabled', true);
		$form.submit();
	}
	
}
function valida(button){
	var $form = $(button).closest('form');
	var passou = true;
	
	var contador = 0;
	var listaParaValidar =  $(".requerido");
	
	for(contador = 0; contador < listaParaValidar.length;contador++){
		
		var $campo = $(listaParaValidar[contador]);
		var $formCampo =  $campo.closest('form');
		var visible =  $campo.is(':visible') 
		

		if($form.attr('action') == $formCampo.attr('action') && visible){

			//alert($(listaParaValidar[contador]).val());
			if($campo.hasClass("removeAcento"))$campo.val(tiraAcentos($campo.val()));
			if($campo.hasClass("numeric"))$campo.val($campo.val().replace(/[A-Za-z$-]/g, ""));
			
			
			
			if($campo.val() == ""){
				$campo.css({'background-color':'red'});
				$campo.focus();
				passou = false;
				break;
			}else if($campo.attr("min") > $campo.val().length){
				$campo.css({'background-color':'red'});
				$campo.focus();
				passou = false;
				break;
			}else if($campo.attr("tipo") == "email"){
				
				var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				
				if (!filter.test($campo.val())) {
					$campo.css({'background-color':'red'});
					$campo.focus();
					passou =  false;
					break;
				}else{
					$campo.css({'background-color':''});
				}
				
			}else if($campo.attr("tipo") == "chave"){
				passou = validaCPF($campo.val());
				if(!passou) passou =  validarCNPJ($campo.val());
				
				if(!passou){
					$campo.css({'background-color':'red'});
					break;
				}
	
			}else{
				$campo.css({'background-color':''});
			}
			
			if(passou)$campo.css({'background-color':''});
		
		}
	}
		
	
	return passou;
}

function validaCPF(cpf)
{
  var numeros, digitos, soma, i, resultado, digitos_iguais;
  digitos_iguais = 1;
  if (cpf.length < 11)
        return false;
  for (i = 0; i < cpf.length - 1; i++)
        if (cpf.charAt(i) != cpf.charAt(i + 1))
              {
              digitos_iguais = 0;
              break;
              }
  if (!digitos_iguais)
        {
        numeros = cpf.substring(0,9);
        digitos = cpf.substring(9);
        soma = 0;
        for (i = 10; i > 1; i--)
              soma += numeros.charAt(10 - i) * i;
        resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
        if (resultado != digitos.charAt(0))
              return false;
        numeros = cpf.substring(0,10);
        soma = 0;
        for (i = 11; i > 1; i--)
              soma += numeros.charAt(11 - i) * i;
        resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
        if (resultado != digitos.charAt(1))
              return false;
        return true;
        }
  else
      return false;
}

function validarCNPJ(cnpj) {

	cnpj = cnpj.replace(/[^\d]+/g,'');

	if(cnpj == '') return false;
	
	if (cnpj.length != 14)
		return false;

	// Elimina CNPJs invalidos conhecidos
	if (cnpj == "00000000000000" || 
		cnpj == "11111111111111" || 
		cnpj == "22222222222222" || 
		cnpj == "33333333333333" || 
		cnpj == "44444444444444" || 
		cnpj == "55555555555555" || 
		cnpj == "66666666666666" || 
		cnpj == "77777777777777" || 
		cnpj == "88888888888888" || 
		cnpj == "99999999999999")
		return false;
		
	// Valida DVs
	tamanho = cnpj.length - 2
	numeros = cnpj.substring(0,tamanho);
	digitos = cnpj.substring(tamanho);
	soma = 0;
	pos = tamanho - 7;
	for (i = tamanho; i >= 1; i--) {
	  soma += numeros.charAt(tamanho - i) * pos--;
	  if (pos < 2)
			pos = 9;
	}
	resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
	if (resultado != digitos.charAt(0))
		return false;
		
	tamanho = tamanho + 1;
	numeros = cnpj.substring(0,tamanho);
	soma = 0;
	pos = tamanho - 7;
	for (i = tamanho; i >= 1; i--) {
	  soma += numeros.charAt(tamanho - i) * pos--;
	  if (pos < 2)
			pos = 9;
	}
	resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
	if (resultado != digitos.charAt(1))
		  return false;
		  
	return true;
   
}


function devolveXLS(arquivo, conteudo){
	$("#nome").val(arquivo);
	$("#conteudo").val($("#"+conteudo).html());
	$("#excel").submit();
}


function tiraAcentos(text){
	 var varString = text;
	 var stringAcentos = new String('àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ');
    var stringSemAcento = new String('aaeouaoaeioucuAAEOUAOAEIOUCU');
    var i = new Number();
    var j = new Number();
    var cString = new String();
    var varRes = '';
    for (i = 0; i < varString.length; i++) {
   	 cString = varString.substring(i, i + 1);
        for (j = 0; j < stringAcentos.length; j++) {
            if (stringAcentos.substring(j, j + 1) == cString){
            cString = stringSemAcento.substring(j, j + 1);
           	 }
        }
    	varRes += cString;
    }
	return  varRes
}
