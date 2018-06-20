<%-- 
    Document   : Cursos_Personales
    Created on : 19-06-2018, 14:19:47
    Author     : Horacio
--%>

<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Cursos Inscritos</title>
        <meta charset="UTF-8">
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
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
    %>
    <body>
        <!-- Cabecera -->
        <nav class="navbar navbar-default navbar-fixed-top templatemo-nav" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">Cursos Inscritos</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right text-uppercase">
                        <li><a href="#home">Necesitas Ayuda?</a></li>

                    </ul>
                </div>
            </div>
        </nav>
<!-- Cabecera -->
        <div class="container">

            <% if (usuario != null) {%>
            <div class="row">
                <div class="col s10 offset-s1">
                     
                    </br>  </br> </br> 
                    <p class="flow-text" align="justify">En esta sección podrá acceder a los cursos en los cuales esté inscrito.</p>
                    <p class="flow-text" align="justify">Para seleccionar el curso haga click 'INGRESAR'.</p>
                </div>

                </br>  </br>  </br>  </br> 

                <div class="table100 ver2 m-b-110">
                    <table data-vertable="ver2">
                        <thead>
                            <tr class="row100 head">
                                <th class="column100 column1" data-column="column1"></th>
                                <th class="column100 column2" data-column="column2">Titulo</th>
                                <th class="column100 column3" data-column="column3">Descripción</th>
                                <th class="column100 column4" data-column="column4">Fecha de Inicio</th>
                                <th class="column100 column5" data-column="column5">Fech de Término</th>
                                <th class="column100 column5" data-column="column6">Mas Informarcion</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listaCursos}" var="c">
                                <tr class="row100">
                                    <td class="column100 column1" data-column="column1"><img src="images/Intranet_Alumno/Cursos/${c.imagen}.png"/></td>
                                    <td class="column100 column2" data-column="column2">${c.titulo}</td>
                                    <td class="column100 column3" data-column="column3">${c.descripcion}</td>
                                    <td class="column100 column4" data-column="column4">${c.fecha_inicio}</td>
                                    <td class="column100 column5" data-column="column5">${c.fecha_termino}</td>
                                    <td <a class="btn-floating red" href="Curso_Unidades.jsp"> INGRESAR</a>
                                        <!--Sacado del href -> cursoSeleccionaado.do?id_curso=${c.id_curso}--></td>

                                </tr>
                            </c:forEach>


                        </tbody>

                    </table>
                    <br>
                    <a href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}">Volver</a>
                </div>



            </div>
            <% } else { %>
            <div class="row">
                <div class="col s12">
                    <h3>Debe iniciar sesión para acceder a los contenidos</h3>
                    <a href="index.jsp">Ir al acceso</a>
                </div>
            </div>
            <% }%>
        </div>





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
