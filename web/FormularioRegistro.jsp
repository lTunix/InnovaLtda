<%-- 
    Document   : FormularioRegistro
    Created on : 20-may-2018, 16:21:03
    Author     : ksandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!DOCTYPE HTML>
<html lang="es">
    <head>
        <title>Innova Registro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="css/registroCss.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link href="//fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
        <script src="js/validar.js"></script>
    </head>
    <body>
        <!-- main -->
        <div class="w3ls-header">
            <h1>Formulario de Registro</h1>
            <div class="header-main">
                <h2>Crear una Cuenta</h2>
                <div class="header-bottom">
                    <div class="header-right w3agile">
                        <div class="header-left-bottom agileinfo">
                            <form action="registro.do" method="post" class="form-register" onsubmit="return validar();">

                                <div class="icon1">
                                    <i class="fa fa-id-badge" aria-hidden="true"></i>
                                    <input oninput="checkRut(this)" type="text" id="rut" name="rut" placeholder="Ingrese su RUT" class="input-48" required>
                                </div>


                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="nombre" name="nombre" placeholder="Nombre"  required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="ape_pat" name="ape_pat" placeholder="Apellido Paterno"  required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="ape_mat" name="ape_mat" placeholder="Apellido Materno"  required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user-md" aria-hidden="true"></i>
                                    <input type="text" id="profesion" name="profesion" placeholder="Profesión"  required>
                                </div>


                                <div class="icon1">
                                    <i class="fa fa-check-square" aria-hidden="true"></i>

                                    <select class="form-constrol" id="genero" name="genero" placeholder="Genero">
                                        <option selected="true" value="1">Masculino</option>
                                        <option value="2">Femenino</option>
                                    </select>
                                </div>



                                <div class="icon1">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <input type="email" id="correo" name="correo" placeholder="Correo"  required>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <input type="text" id="telefono" name="telefono" placeholder="Telefono"required>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                    <input type="password" id="clave" name="clave" placeholder="Contraseña"  required>
                                </div>

                                <div class="bottom" >
                                    <input type="submit" value="Crear Cuenta" />
                                </div>

                                <div class="clear"></div>
                                <script src="js/validaRUT.js"></script>
                                <p>Ya tienes Cuenta? <a href="login.jsp">Entrar</a></p>
                                <p class="form-link"> <a href="index.jsp"> Volver</a></p>
                        </div>
                        </form>	
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header end here-->
    <!-- copyright start here -->
    <div class="copyright">
        <p>© INNOVA 2018 - Todos Los Derechos Reservados</p>
    </div>
    <!--copyright end here-->
</body>
</html>