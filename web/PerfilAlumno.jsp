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
        <link rel="stylesheet" type="text/css" href="css/perfilalumno.css" />
        <script src="js/bootstrap.js"></script>
        <script src="js/subirImagen.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
        <script src="js/perfilAlumno.js"></script>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


    </head>
     <body>
        <%  Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");
            String genero = "";%>

        <div class="example3">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><img src="images/perfilalumno.png" alt="Cursos Inscritos">
                        </a>
                    </div>
                    <div id="navbar3" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}">Mi Cursos</a></li>
                            <li><a href="centrodeayuda.jsp">Ayuda</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>

                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>
        </div>


        <div class="container">


            <c:if test="${not empty user}">
                <div class="row">
                    </br>
                    <h2> </h2>


                    <div class="col-md-7" style="margin-left: 240px; ">

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
                                                <p id="elija">Seleccione una Imagen de Perfil</p>
                                                <div class="form-inline">
                                                    <input id="imagen" name="imagen" type="file" />
                                                    <input type="hidden" name="rutUsuario" value="<%= session.getAttribute("rut").toString()%>"/> 
                                                </div> </br>
                                                <div class="form-inline">
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
                                    <span><p>Curso</p></span>            
                                </div>
                                <div class="clearfix"></div>
                                <hr style="margin:5px 0 5px 0;"> </br>


                                <div class="col-sm-5 col-xs-6 tital " >Rut:</div><div class="col-sm-7 col-xs-6 ">${sessionScope.user.rut}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Nombre:</div><div class="col-sm-7"> ${sessionScope.user.nombre}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Apellido Paterno:</div><div class="col-sm-7"> ${sessionScope.user.apellido_paterno}</div>
                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Apellido Materno:</div><div class="col-sm-7">${sessionScope.user.apellido_materno}</div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Genero:</div><div class="col-sm-7">  <% if (usuarioActual.getGenero() == 1) {
                                        genero = "Masculino";
                                    } else if (usuarioActual.getGenero() == 2) {
                                        genero = "Femenino";
                                    } else {
                                        genero = "Otro";
                                    }%> <% out.print(genero);%></div> 

                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Profesion:</div><div class="col-sm-7">${sessionScope.user.profesion}   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Email:</div><div class="col-sm-7">${sessionScope.user.email} &nbsp; </div>

                                <div class="clearfix"></div>
                                <div class="bot-border"></div> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Contraseña: </div><div class="col-sm-7">${sessionScope.user.pass} &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</div>

                                <div class="bot-border"></div> </br> </br>

                                <div class="col-sm-5 col-xs-6 tital " >Telefono Contacto:</div><div class="col-sm-7">${sessionScope.user.telefono} &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</div>
                                <div class="clearfix"></div> 
                                <!-- /.box-body -->

                                </br> </br> 
                                <CENTER><button type="button" id="botonProfesion" onclick="cambiaProf()" class="btn btn-success">Cambiar Profesion</button>


                                <button class="btn btn-info" type="button" id="botonEmail" onclick="cambiaCorreo()">Cambiar Email</button>


                                <button  class="btn btn-warning" type="button" id="botonClave" onclick="cambiaClave()">Cambiar Contraseña</button>


                                <button class="btn btn-danger" type="button" id="botonTelefono" onclick="cambiaTel()">Cambiar Telefono</button> </CENTER>

                                
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
                    <a style="color:black" href="index.jsp">Volver a la pagina principal</a> 
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
