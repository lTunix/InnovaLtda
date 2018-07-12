<%-- 
    Document   : FormularioRegistro
    Created on : 20-may-2018, 16:21:03
    Author     : ksandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script type="text/javascript">
            function validarTel(e) {
                tecla = (document.all) ? e.keyCode : e.which;
                if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
                if (tecla==44) return true; //Coma ( En este caso para diferenciar los decimales )
                if (tecla==48) return true;
                if (tecla==49) return true;
                if (tecla==50) return true;
                if (tecla==51) return true;
                if (tecla==52) return true;
                if (tecla==53) return true;
                if (tecla==54) return true;
                if (tecla==55) return true;
                if (tecla==56) return true;
                patron = /1/; 
                te = String.fromCharCode(tecla);
                return patron.test(te); 
            } 
        </script>   
        <script>
            function soloLetras(e){
               key = e.keyCode || e.which;
               tecla = String.fromCharCode(key).toLowerCase();
               letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
               especiales = "8-37-39-46";

               tecla_especial = false
               for(var i in especiales){
                    if(key == especiales[i]){
                        tecla_especial = true;
                        break;
                    }
                }

                if(letras.indexOf(tecla)==-1 && !tecla_especial){
                    return false;
                }
            }
        </script>
         
        <script>
            function CheckUserName(ele) {
            if (/\s/.test(ele.value)) { 
                alert("Los campos no deben tener espacios en blanco. \n Intente nuevamente"); }
            }
        </script>
    </head>
    <body>
        <!-- main -->
        <div class="w3ls-header">
            <div class="header-main">
                <h2>Crear una Cuenta</h2>
                <div class="header-bottom">
                    <div class="header-right w3agile">
                        <div class="header-left-bottom agileinfo">
                            <form action="registro.do" method="post" class="form-register" onsubmit="return validar();">

                                <div class="icon1">
                                    <i class="fa fa-id-badge" aria-hidden="true"></i>
                                    <input oninput="checkRut(this)" onblur="CheckUserName(this);" type="text" id="rut" name="rut" placeholder="Ingrese su RUT" class="input-48" maxlength="10" required>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="nombre" name="nombre" placeholder="Nombre" maxlength="20" onkeypress="return soloLetras(event)"  onBlur="CheckUserName(this);" required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="ape_pat" name="ape_pat" placeholder="Apellido Paterno" maxlength="20" onkeypress="return soloLetras(event)" onBlur="CheckUserName(this);" required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <input type="text" id="ape_mat" name="ape_mat" placeholder="Apellido Materno" maxlength="20" onkeypress="return soloLetras(event)" onBlur="CheckUserName(this);" required>
                                </div>

                                <div class="icon1">
                                    <i class="fa fa-user-md" aria-hidden="true"></i>
                                    <input type="text" id="profesion" name="profesion" placeholder="Profesión" maxlength="20" onkeypress="return soloLetras(event)" onBlur="CheckUserName(this);" required>
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
                                    <input type="email" id="correo" name="correo" placeholder="Correo"  maxlength="50" onBlur="CheckUserName(this);" required>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <input type="text" id="telefono" name="telefono" placeholder="Telefono" onKeyPress="return validarTel(event)" maxlength="9" required>
                                </div>
                                <div class="icon1">
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                    <input type="password" id="clave" name="clave" placeholder="Contraseña" maxlength="20" onBlur="CheckUserName(this);" required>
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