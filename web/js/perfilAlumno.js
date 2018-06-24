//Funciones de Boton para cambio de datos
function cambiaCorreo() {
      //alert("Me haz dado un click");
        //Variable que almacena el método window.open()
        var miVentana;
        //La función window_open crea el pop-up o ventana emergente
        function window_open(){
         miVentana = window.open( "FormularioCambioCorreo.jsp", "nombrePop-Up", "width=380,height=500, top=85,left=50");
        }
        //La función window_close cerrara el pop-up o ventana emergente
        function window_close(){
            miVentana.close();
        }
        //Llamo a la función window_open en el evento click del botón con id = "botonXXX"
       document.getElementById("botonEmail").onclick = function() {window_open()};
  }
  
  function cambiaProf() {
      //alert("Me haz dado un click");
        //Variable que almacena el método window.open()
        var miVentana;
        //La función window_open crea el pop-up o ventana emergente
        function window_open(){
         miVentana = window.open( "FormularioCambioProfesion.jsp", "nombrePop-Up", "width=380,height=500, top=85,left=50");
        }
        //La función window_close cerrara el pop-up o ventana emergente
        function window_close(){
            miVentana.close();
        }
        //Llamo a la función window_open en el evento click del botón con id = "botonXXX"
       document.getElementById("botonProfesion").onclick = function() {window_open()};
  }
  
  function cambiaClave() {
      //alert("Me haz dado un click");
        //Variable que almacena el método window.open()
        var miVentana;
        //La función window_open crea el pop-up o ventana emergente
        function window_open(){
         miVentana = window.open( "FormularioCambioClave.jsp", "nombrePop-Up", "width=380,height=500, top=85,left=50");
        }
        //La función window_close cerrara el pop-up o ventana emergente
        function window_close(){
            miVentana.close();
        }
        //Llamo a la función window_open en el evento click del botón con id = "botonXXX"
       document.getElementById("botonClave").onclick = function() {window_open()};
  }
  
  function cambiaTel() {
      //alert("Me haz dado un click");
        //Variable que almacena el método window.open()
        var miVentana;
        //La función window_open crea el pop-up o ventana emergente
        function window_open(){
         miVentana = window.open( "FormularioCambioTel.jsp", "nombrePop-Up", "width=380,height=500, top=85,left=50");
        }
        //La función window_close cerrara el pop-up o ventana emergente
        function window_close(){
            miVentana.close();
        }
        //Llamo a la función window_open en el evento click del botón con id = "botonXXX"
       document.getElementById("botonTelefono").onclick = function() {window_open()};
  }
      