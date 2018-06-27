<%-- 
    Document   : FormularioCambioCorreo
    Created on : 21-06-2018, 22:37:47
    Author     : Kris Sandoval
--%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Cambiar Clave</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="css/registroCss.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link href="//fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
        <script src="js/validar.js"></script>
    </head>
    <body>
         <% //Pregunto si existe el atributo de sesion identificado como "user"
            Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");%>
        <div class="container">
            <c:if test="${not empty user}">
                <div class="row">
                    <div class="col s12">

                        <div class="w3ls-header">
                            <h1><br></h1>
                            <div class="header-main">
                                <h2>Cambiar Clave</h2>
                                <div class="header-bottom">
                                    <div class="header-right w3agile">
                                        <div class="header-left-bottom agileinfo">
                                            <form action="cambiarClave.do" method="post" class="form-register" onsubmit="return validar();">
                                                <div class="icon1">
                                                    <i class="fa fa-id-badge" aria-hidden="true"></i>
                                                      <input oninput="checkRut(this)" type="text" id="rut" name="rutUsuario" placeholder="Ingrese su RUT" class="input-48" value="<%= request.getSession().getAttribute("rut")%>" readonly="readonly"  required>
                                                </div>
                                                <div class="icon1">
                                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                                    <input type="password" id="clave" name="clave" placeholder="Contraseña" value="<%= request.getSession().getAttribute("contraseña") %>" required>
                                                </div>
                                                <div class="icon1">
                                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                                    <input type="password" id="clave" name="nuevaClave" placeholder="Nueva Contraseña"  required>
                                                </div>

                                                <div class="bottom" >
                                                    <input type="submit" value="Aceptar" />
                                                </div>
                                                <div class="clear"></div>
                                                <script src="js/validaRUT.js"></script>
                                            </form>	
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty user}">
                <div class="row">
                    <div class="col s12">
                        <h2>Acceso Restringuido</h2>
                        <a href="index.jsp">Volver a la pagina principal</a> 
                    </div>
                </div>
            </c:if>   
        </div><!-- fin contenedor -->             
    </body>
</html>
