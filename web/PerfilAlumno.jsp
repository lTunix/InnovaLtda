<%-- 
    Document   : PerfilAlumno
    Created on : 18-jun-2018, 16:30:36
    Author     : ksandoval
--%>
<%@page import="Modelo.Usuario"%>
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil de Alumno</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Menu Del Alumno" />
        <meta name="keywords" content="" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link href="css/centrodeayuda.css" type="text/css" rel="stylesheet" media="all"> 
        <link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/estilo.css" type="text/css" rel="stylesheet" media="all">
        <link rel="stylesheet" type="text/css" href="css/menualumnos.css" />
        <script src="js/bootstrap.js"></script>
        <script src="js/subirImagen.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
        <script src="js/perfilAlumno.js"></script>

    </head>
    <body>
        <%  Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");
            String genero = "";%>
        <div class="container">
            <c:if test="${not empty user}">
                <div class="row">
                    <div class="col s12">
                        <div class="header-right">
                            <div class="agileinfo-social-grids">
                                <ul>
                                    <li><a style="color:black; font-size:150%" href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}"><i class="fa fa-address-book"></i> Mis Cursos</a></li>


                                </ul>
                            </div>
                        </div>
                        <h1>Perfil de Alumno</h1>

                        <div class="table-responsive" >

                            <div id="subida">
                                <form method="post" action="CambiarImagenPerfil.do" enctype="multipart/form-data">
                                    <p id="elija">SELECCIONE UNA IMAGEN DE PERFIL (MÁX 64KB)</p>
                                    <div class="form-control">
                                        <input id="imagen" name="imagen" type="file" />
                                        <input type="hidden" name="rutUsuario" value="<%= session.getAttribute("rut").toString()%>"/> 
                                    </div>
                                    <div class="form-control">
                                        <input type="submit" value="Subir imagen">
                                    </div>

                                </form>
                            </div>

                            <div id="imagenPerfil" class="none">                               


                                <% for (Usuario u : Usuario.RecuperarImagen(session.getAttribute("rut").toString())) {

                                        out.println("<td align='center'><img src='data:image/gif;base64,");
                                        for (byte i : u.getEncodedImage()) {
                                            out.print((char) i);
                                        }

                                        out.println("'/></td>");

                                    }
                                %>



                            </div>
                            <br/>
                            <table class="table table-hover" border="1" cellspacing="1" cellpadding="1" >
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Rut: </td>
                                        <td><p> ${sessionScope.user.rut} </p></td>

                                    </tr>
                                    <tr>
                                        <td>Nombre: </td>
                                        <td><p> ${sessionScope.user.nombre} </p></td>

                                    </tr>
                                    <tr>
                                        <td>Apellido Paterno: </td>
                                        <td><p> ${sessionScope.user.apellido_paterno} </p></td>
                                    </tr>
                                    <tr>
                                        <td>Apellido Materno: </td>
                                        <td><p> ${sessionScope.user.apellido_materno} </p></td>

                                    </tr>

                                    <tr>
                                        <td>Genero: </td>

                                        <% if (usuarioActual.getGenero() == 1) {
                                                genero = "Masculino";
                                            } else if (usuarioActual.getGenero() == 2) {
                                                genero = "Femenino";
                                            } else {
                                                genero = "Otro";
                                            }
                                        %><td><p> <% out.print(genero);%> </p></td>

                                    </tr>

                                    <tr>
                                        <td>Profesión: </td>
                                        <td><p> ${sessionScope.user.profesion} </p> <br> <button id="botonProfesion" onclick="cambiaProf()">Cambiar Profesión</button></td>

                                    </tr>
                                    <tr>
                                        <td>Email: </td>
                                        <td><p> ${sessionScope.user.email} </p> <br> <button id="botonEmail" onclick="cambiaCorreo()">Cambiar Email</button></td>

                                    </tr>
                                    <tr>
                                        <td>Contraseña: </td>
                                        <td><p> ${sessionScope.user.pass} </p> <br> <button id="botonClave" onclick="cambiaClave()">Cambiar Contraseña</button></td>

                                    </tr>
                                    <tr>
                                        <td>Telefono de contacto: </td>
                                        <td><p> ${sessionScope.user.telefono} </p> <br> <button id="botonTelefono" onclick="cambiaTel()">Cambiar Telefono</button></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </c:if>
            <c:if test="${empty user}">
                <div class="row">
                    <div class="col s12">
                        <h2>Acceso Restringido</h2>
                        <a href="index.jsp">Volver a la pagina principal</a> 
                    </div>
                </div>
            </c:if>   
        </div><!-- fin contenedor -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>

    </body>
</html>
