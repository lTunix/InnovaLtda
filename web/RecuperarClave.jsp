<%-- 
    Document   : RecuperarClave
    Created on : 23-may-2018, 12:27:41
    Author     : ksandoval
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Jewel Theme">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Recuperacion de Contraseña</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/rclave.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <script src="js/form-rclave.js"></script>
    </head>
    <body>
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">¿Olvidaste tu contraseña?</h2>
                                <p>Recuperala Aqui!</p>
                                <div class="panel-body">
                                    
                                    <form id="register-form" role="form" autocomplete="off" class="form" method="post" onsubmit="return validar();" >
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                <input id="email" name="txt_email" placeholder="Correo Electronico" class="form-control"  type="email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Restablecer Contraseña" type="submit">
                                        </div>
                                        <input type="hidden" class="hide" name="token" id="token" value=""> 
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
