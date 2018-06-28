<%-- 
    Document   : prueba
    Created on : 27-06-2018, 20:59:37
    Author     : ratedxpw
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/centrodeayuda.css" type="text/css" rel="stylesheet" media="all">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Perfil de Alumno</title>
    </head>
    <body>
        <%  Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");
            String genero = "";%>


        <div class="header-right">
            <div class="agileinfo-social-grids">
                <ul>
                    <li><a style="color:black; font-size:150%" href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}"><i style="color:black"class="fa fa-address-book"></i> Mis Cursos</a></li>


                </ul>
            </div>
        </div>

        <div class="container">

            <c:if test="${not empty user}">
                <div class="row">
                    </br> </br> </br> </br> </br> 
                    <h2>Bienvenido </h2>


                    <div class="col-md-7 ">

                        <div class="panel panel-default">
                            <div class="panel-heading">  <h4 >Mi Perfil</h4></div>
                            <div class="panel-body">

                                <div class="box box-info">

                                    <div class="box-body">
                                        <div class="col-sm-6">
                                            <%
                                                try {

                                                    for (Usuario u : Usuario.RecuperarImagen(session.getAttribute("rut").toString())) {

                                                        out.println("<td   align='center'> <center><img  style='width:210px;height:210px;  background-repeat: no-repeat; background-position: 50%; border-radius: 50%; background-size: 100% auto; ' src='data:image/gif;base64,");
                                                        for (byte i : u.getEncodedImage()) {
                                                            out.print((char) i);
                                                        }

                                                        out.println("'/></center></td>");
                                                    }

                                                } catch (NullPointerException ex) {

                                                    out.println("<td   align='center'> <center><img  style='width:210px;height:210px;  background-repeat: no-repeat; background-position: 50%; border-radius: 50%; background-size: 100% auto; ' src='images/userdefault.png'/> </center></td>");

                                                }


                                            %>                 


                                            <form method="post" action="CambiarImagenPerfil.do" enctype="multipart/form-data">
                                                <p id="elija">SELECCIONE UNA IMAGEN DE PERFIL</p>
                                                <div class="form-control">
                                                    <input id="imagen" name="imagen" type="file" />
                                                    <input type="hidden" name="rutUsuario" value="<%= session.getAttribute("rut").toString()%>"/> 
                                                </div>
                                                <div class="form-control">
                                                    <input type="submit" value="Subir imagen">
                                                </div>

                                            </form>
                                        </div>
                                        <!--Upload Image Js And Css-->







                                    </div>

                                    <br>

                                    <!-- /input-group -->
                                </div>
                                <div class="col-sm-6">
                                    <h4 style="color:#00b1b1;"> ${sessionScope.user.nombre} ${sessionScope.user.apellido_paterno} </h4></span>
                                    <span><p>Cursos</p></span>            
                                </div>
                                <div class="clearfix"></div>
                                <hr style="margin:5px 0 5px 0;">


                                <div class="col-sm-5 col-xs-6 tital " >Rut:</div><div class="col-sm-7 col-xs-6 ">${sessionScope.user.rut}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Nombre:</div><div class="col-sm-7"> ${sessionScope.user.nombre}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Apellido Paterno:</div><div class="col-sm-7"> ${sessionScope.user.apellido_paterno}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Apellido Materno:</div><div class="col-sm-7">${sessionScope.user.apellido_materno}</div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Genero:</div><div class="col-sm-7">  <% if (usuarioActual.getGenero() == 1) {
                                        genero = "Masculino";
                                    } else if (usuarioActual.getGenero() == 2) {
                                        genero = "Femenino";
                                    } else {
                                        genero = "Otro";
                                    }
                                    %> </div> <% out.print(genero);%>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Profesion:</div><div class="col-sm-7">${sessionScope.user.profesion} <button id="botonProfesion" onclick="cambiaProf()">Cambiar Profesión</button></div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Email:</div><div class="col-sm-7">${sessionScope.user.email} <button id="botonEmail" onclick="cambiaCorreo()">Cambiar Email</button></div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Contraseña: </div><div class="col-sm-7">${sessionScope.user.pass} <button id="botonClave" onclick="cambiaClave()">Cambiar Contraseña</button></div>

                                <div class="bot-border"></div>

                                <div class="col-sm-5 col-xs-6 tital " >Telefono Contacto:</div><div class="col-sm-7">${sessionScope.user.telefono} <button id="botonTelefono" onclick="cambiaTel()">Cambiar Telefono</button></div>

                                <div class="clearfix"></div>

                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->

                        </div>


                    </div> 
                </div>
            </div>  
        </c:if>
        <c:if test="${empty user}">
            <div class="row">
                <div class="col s12">
                    <h2>Acceso Restringido</h2>
                    <a style="color:black"href="index.jsp">Volver a la pagina principal</a> 
                </div>
            </div>
        </c:if>   
   <!-- fin contenedor -->
    <script>
        $(function () {
            $('#profile-image1').on('click', function () {
                $('#profile-image-upload').click();
            });
        });
    </script> 

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>








</body>
</html>
