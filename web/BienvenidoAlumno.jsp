<%@page import="Modelo.Usuario"%>
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Intranet Alumno</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Menu Del Alumno" />
        <meta name="keywords" content="" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link type="text/css" rel="stylesheet" href="css/piedepagina.css"/>
        <link rel="stylesheet" type="text/css" href="css/menualumnos.css" />
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <% //Pregunto si existe el atributo de sesion identificado como "user"
            Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");%>

        <div class="container">
            <c:if test="${not empty user}">
                <div class="row">
                    <div class="col s12">

                        <%
                            ConexionBD conex = new ConexionBD();
                            Usuario usuario = (Usuario) session.getAttribute("user");
                            String rut = usuario.getRut();
                            if (conex.abrirConexion() != null) {
                        %>
                        <!--Conexion exitosa!!!!-->
                        <%
                            }
                        %>
                        <div class="contenedor">
                            <div class="cabezerac">
                                <a href="cargaCursosPersonales.do?rut_fulano=${sessionScope.user.rut}"><strong></strong>Ver Mis Cursos</a>
                                <span class="right">
                                    <a href="">Bienvenido: <p> ${sessionScope.user.nombre} </p> </a>
                                    <a href="index.jsp"><strong>Cerrar Sesion </strong></a>
                                </span>
                                <div class="clr"></div>
                            </div>
                            <h1>Mi Curso</h1>
                            <div class="contenidogeneral">

                                <ul class="menualumnos">
                                    <li>
                                        <a href="cargaCursosPersonales.do?rut_fulano=${sessionScope.user.rut}">
                                            <span class="iconosmenualumnos">A</span>
                                            <div class="contenidomenualumnos">
                                                <h2 class="nombremenualumnos">Mis Cursos</h2>

                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="CtrlNotasAlumno.do?rut_fulano=${sessionScope.user.rut}">
                                            <span class="iconosmenualumnos">p</span>
                                            <div class="contenidomenualumnos">
                                                <h2 class="nombremenualumnos">Mis Notas</h2>

                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="iconosmenualumnos">&#64;</span>
                                            <div class="contenidomenualumnos">
                                                <h2 class="nombremenualumnos">Correo Electronico</h2>

                                            </div>
                                        </a>
                                    </li>
                               
                                    <li>
                                        <a href="PerfilAlumno.jsp">
                                            <span class="iconosmenualumnos">&#85;</span>
                                            <div class="contenidomenualumnos">
                                                <h2 class="nombremenualumnos">Mi Perfil Estudiantil</h2>

                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="centrodeayuda.jsp">
                                            <span class="iconosmenualumnos">S</span>
                                            <div class="contenidomenualumnos">
                                                <h2 class="nombremenualumnos">Centro de Ayuda</h2>
                                                <h3 class="subnombremenualumnos">24/7 para tus Problemas</h3>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
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
        
        
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    </body>
</html>
