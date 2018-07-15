<%-- 
    Document   : Recurso
    Created on : 19-06-2018, 22:50:31
    Author     : Horacio
--%>
<%@page import="modelo_intranet_alumnos_curso.Recurso"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recurso Educativo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="css/cabecera.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/css/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/csss/elect2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/css/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/css/util.css">
        <link rel="stylesheet" type="text/css" href="cursospersonales/css/main.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="cursospersonales/css/footer-distributed.css">
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
        Recurso recurso = (Recurso) request.getAttribute("recurso");
        String permiso = (String) request.getAttribute("permiso");
    %>
    <body>

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
                        <a class="navbar-brand" href="#"><img src="images/recursosdelaunidad.png" alt="Cursos Inscritos">
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
            <div>
                <br/>
                <img style="width: 25%;" src="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/<%=recurso.getImagen_recurso()%>.png"/><!--Esta es la vista previa; una imagen-->
                <br/>
                <h3><b>Título: </b><%=recurso.getTitulo_recurso()%></h3>
                <p><b>Año de creación: </b><%=recurso.getAnio_creacion()%></p>
                <p><b>Tipo de recurso: </b><%=recurso.getTipo_recurso()%></p>
                <p><b>Permisos: </b><%=permiso%></p>
                <br>
            </div>
            <br>
            <div>
                <%if (recurso.getTipo_recurso().equalsIgnoreCase("video")) {%>
                <div id="video_container">
                    <video controls width="50%" preload>
                        <source src="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/<%=recurso.getImagen_recurso()%>.mp4" type="video/mp4">
                    </video>
                </div>
                <div id="videoControls"> 
                    <div id="progress">  
                        <div id="progress_box">  
                            <span id="play_progress"></span> 
                        </div>  
                    </div>
                </div>
                <div>
                    <%if (permiso.equalsIgnoreCase("Creative Commons")) {%>
                    <a href="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/<%=recurso.getImagen_recurso()%>.mp4" download="Recurso">
                        Descargar Archivo
                    </a>
                    <%} else if (permiso.equalsIgnoreCase("Derechos Reservados")) {%>
                    <p><b>Este archivo no puede ser descargado</b>
                        <%}%>
                </div>
                <%} else if (recurso.getTipo_recurso().equalsIgnoreCase("imagen")) {%>
                <div>
                    <img src="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/<%=recurso.getImagen_recurso()%>.png"/>
                </div>
                <div>
                    <%if (permiso.equalsIgnoreCase("Creative Commons")) {%>
                    <a href="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/<%=recurso.getImagen_recurso()%>.png" download="Recurso">
                        Descargar Archivo
                    </a>
                    <%} else if (permiso.equalsIgnoreCase("Derechos Reservados")) {%>
                    <p><b>Este archivo no puede ser descargado</b>
                        <%}%>
                </div>
                <%}%>
            </div>

            <br>
            <a href="entradaSeleccionada.do?id_entrada=<%=recurso.getId_entrada()%>">Volver</a>
        </div>
        <footer class="footer-distributed">

            <div class="footer-right">

                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-github"></i></a>

            </div>

            <div class="footer-left">

                <p class="footer-links">
                    <a href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}">Mi Curso</a>
                    ·

                </p>

                <p>Innova Capacitaciones &copy; 2018</p>
            </div>

        </footer>


        <!--===============================================================================================-->	
        <script src="cursospersonales/js/cursos/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="cursospersonales/js/cursos/js/popper.js"></script>
        <script src="cursospersonales/js/cursos/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="cursospersonales/js/cursos/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="cursospersonales/js/cursos/main.js"></script>
    </body>
</html>
