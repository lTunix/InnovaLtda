<%-- 
    Document   : index
    Created on : 27-03-2018, 13:56:46
    Author     : Lyonel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
          <link rel="stylesheet" href="css/piedepagina.css">
        <title>Bienvenido - Inicio de Sesion</title>
    </head>
<body>

					
					
<div class="contenedor">
  <div class="titulo">
    <h1>Inicio Sesion</h1>
  </div>
</div>
<div class="form">
  <div class="imagen"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>

  <form class="login-form" action="ingreso.do" method="post">
    <input type="email" placeholder="Correo Electronico" name="txt_correoUser" required/>
    <input type="password" placeholder="Contraseña" name="txt_passUser" required/>
    <button>Iniciar Sesion</button>
    <p class="mensaje"> <a href="restaurarclave.jsp"> Restablecer Contraseña</a></p>
    <p class="mensaje"> <a href="FormularioRegistro.jsp"> Registrarse</a></p>
    <p class="mensaje"> <a href="index.jsp"> Volver</a></p>
  </form>
</div>
    
</body>
       <script src="js/jquery-2.2.3.min.js"></script>
</html>