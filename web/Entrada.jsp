<%-- 
    Document   : Entrada.jsp
    Created on : 19-06-2018, 22:29:22
    Author     : Horacio
--%>
<%@page import="modelo_intranet_alumnos_curso.Entrada"%>
<%@page import="modelo_intranet_alumnos_curso.Unidad"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unidades del Curso</title>


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
        Entrada entrada = (Entrada) request.getAttribute("entrada");
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
                        <a class="navbar-brand" href="#"><img src="images/entradasdelcurso.png" alt="Cursos Inscritos">
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
                <img style="width: 25%;" src="images/Intranet_Alumno/Cursos/Unidad/Entrada/<%=entrada.getImagen_entrada()%>.png"/>
                <br/>
                <h2><%=entrada.getTitulo_Entrada()%></h2>
                <p><b><%=entrada.getDescrpcion_entrada()%></b></p>
                <br>
                <p><%=entrada.getContenido()%></p>
                <br/>
            </div>
            <br>



            <div class="table100 ver1 m-b-110">
                <table data-vertable="ver1">
                    <thead>
                        <tr class="row100 head">
                            <th class="column100 column1" data-column="column1"></th>
                            <th class="column100 column2" data-column="column2">Título</th>
                            <th class="column100 column3" data-column="column3">Tipo de Recurso</th>

                            <th class="column100 column4" data-column="column4">Recurso </th>


                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.listaRecursos}" var="r">
                            <tr class="row100">
                                <td class="column100 column1" data-column="column1"><img src="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/${r.imagen_recurso}.png"/></td>
                                <td class="column100 column2" data-column="column2">${r.titulo_recurso}</td>
                                <td class="column100 column3" data-column="column3">${r.tipo_recurso}</td>
                                <td>
                                    <a class="btn-floating red" href="recursoSeleccionado.do?id_recurso=${r.id_recurso}">INGRESAR</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br>
            </div>
            <br>
            <a href="unidadSeleccionada.do?id_unidad=<%=entrada.getId_curso()%>">Volver</a>
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
