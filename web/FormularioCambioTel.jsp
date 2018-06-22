<%-- 
    Document   : FormularioCambioCorreo
    Created on : 21-06-2018, 22:37:47
    Author     : Kris Sandoval
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cambiar Telefono</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="css/registroCss.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link href="//fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
        <script src="js/validar.js"></script>
    </head>
    <body>
        <div class="w3ls-header">
            <h1><br></h1>
            <div class="header-main">
                <h2>Cambiar Telefono</h2>
                <div class="header-bottom">
                    <div class="header-right w3agile">
                        <div class="header-left-bottom agileinfo">
                            <form action="cambiarTelefono.do" method="post" class="form-register" onsubmit="return validar();">
                                <div class="icon1">
                                    <i class="fa fa-id-badge" aria-hidden="true"></i>
                                    <input oninput="checkRut(this)" type="text" id="rut" name="rutUsuario" placeholder="Ingrese su RUT" class="input-48" required>
                                </div>
                             <div class="icon1">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <input type="text" id="telefono" name="nuevoTelefono" placeholder="Nuevo Telefono"required>
                                </div>
                                <div class="bottom" >
                                    <input type="submit" value="Aceptar" />
                                </div>
                                <div class="clear"></div>
                                <script src="js/validaRUT.js"></script>
                        </div>
                        </form>	
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
