function validar() {
	//alert("Funca?");
	var correo, contraseña;
	correo = document.getElementById("correo").value;
	contraseña = document.getElementById("contraseña").value;
	//Validar correo, con ESPRESIONES REGULARES//
	expresion = /\w+@\w+\.+[a-z]/;

	if (correo === "" || clave === "") {
		alert("Todos los campos son obligatorios");
		return false;
	}
	else if (correo.length > 50){
		alert("El correo es muy largo");
		return false;
	}
	else if(expresion.test(correo)){ //evalua que correo cumple con la expresion regular puesta en la variable EXPRESION//
		alert("El correo no es valido");
		return false;
	}
	else if (contraseña.length > 20){
		alert("La Clave solo deben tener 20 caracteres como maximo");
		return false;
	}
}


