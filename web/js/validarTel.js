/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validarTel(e) {
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla == 8)
        return true; //Tecla de retroceso (para poder borrar)
    if (tecla == 44)
        return true; //Coma ( En este caso para diferenciar los decimales )
    if (tecla == 48)
        return true;
    if (tecla == 49)
        return true;
    if (tecla == 50)
        return true;
    if (tecla == 51)
        return true;
    if (tecla == 52)
        return true;
    if (tecla == 53)
        return true;
    if (tecla == 54)
        return true;
    if (tecla == 55)
        return true;
    if (tecla == 56)
        return true;
    patron = /1/;
    te = String.fromCharCode(tecla);
    return patron.test(te);
}


