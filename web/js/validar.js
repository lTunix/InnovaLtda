/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validar() {
    //alert("Funca?");
    var rut, nombre, ape_pat, ape_mat, genero, profesion, telefono, correo, clave, expresion;
    rut = document.getElementById("rut").value;
    nombre = document.getElementById("nombre").value;
    ape_pat = document.getElementById("ape_pat").value;
    ape_mat = document.getElementById("ape_mat").value;
    genero = document.getElementById("genero").value;
    profesion = document.getElementById("profesion").value;
    telefono = document.getElementById("telefono").value;
    correo = document.getElementById("correo").value;
    clave = document.getElementById("clave").value;
    //Validar correo, con ESPRESIONES REGULARES//
    expresion = /^(?:[^<>()[\].,;:\s@"]+(\.[^<>()[\].,;:\s@"]+)*|"[^\n"]+")@(?:[^<>()[\].,;:\s@"]+\.)+[^<>()[\]\.,;:\s@"]{2,63}$/i;

    if (rut === "" || nombre === "" || ape_pat === "" || ape_mat === "" || profesion === "" || telefono === "" || correo === "" || clave === "") {
        alert("Todos los campos son obligatorios");
        return false;
    } else if (nombre.length > 20) {
        alert("El nombre es muy largo");
        return false;
    } else if (ape_pat.length > 20) {
        alert("El Apellido Paterno es muy largos");
        return false;
    } else if (ape_mat.length > 20) {
        alert("El Apellido Materno es muy largos");
        return false;
    } else if (profesion.length > 20) {
        alert("El nombre de la profesion es muy largo");
        return false;
    } else if (correo.length > 50) {
        alert("El correo es muy largo");
        return false;
    } else if (expresion.test(correo.value)) { //evalua que correo cumple con la expresion regular puesta en la variable EXPRESION//
        alert("El correo no es valido");
        return false;
    } else if (clave.length > 20) {
        alert("La Clave solo deben tener 20 caracteres como maximo");
        return false;
    } else if (telefono.length > 10) {
        alert("El telefono es muy largo");
        return false;
    }
    //NaN , not a number, para validar numeros//
    else if (isNaN(telefono)) {
        alert("El campo telefono solo acepta valores numericos");
        return false;
    }

}


