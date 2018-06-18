<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--PROBANDO, PROBANDO-->
        <!--AGREGANDO UNA SEGUNDA LÍNEA-->
        <!--AGREGANDO UNA TERCERA LÍNEA-->
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
        <%
            ConexionBD conex = new ConexionBD();
            if (conex.abrirConexion() != null) {
        %>
        Conexion exitosa!!!!
        <%
            }
        %>
        <div class="contenedor">
            <div class="cabezerac">
                <a href=""><strong></strong>Ver Mis Cursos</a>
                <span class="right">
                    <a href="">Bienvenido: </a>
                    <a href=""><strong>Cerrar Sesion </strong></a>
                </span>
                <div class="clr"></div>
            </div>
            <h1>Mi Curso</span></h1>
            <div class="contenidogeneral">

                <ul class="menualumnos">
                    <li>
                        <a href="#">
                            <span class="iconosmenualumnos">A</span>
                            <div class="contenidomenualumnos">
                                <h2 class="nombremenualumnos">Mis Cursos</h2>

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
                        <a href="#">
                            <span class="iconosmenualumnos">&#80;</span>
                            <div class="contenidomenualumnos">
                                <h2 class="nombremenualumnos">Mi Horario</h2>

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
                        <a href="#">
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
        <footer id="footer">

            <div class="container">
                <div class="row">
                    <div class="footerbottom">
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Categorias
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li><a href="#">
                                                Tecnologia
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Negocios
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Diseño Digital
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Programación
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Planes
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li> <a href="#">
                                                Individual  </a>
                                        </li>
                                        <li><a href="#">
                                                OTECS
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Gratis
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Academico
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footerwidget">
                                <h4>
                                    Buscar por categoria
                                </h4>
                                <div class="menu-course">
                                    <ul class="menu">
                                        <li><a href="#">
                                                Todos los cursos
                                            </a>
                                        </li>
                                        <li> <a href="#">
                                                Todos los docentes
                                            </a>
                                        </li>
                                        <li><a href="#">
                                                Todos los usuarios
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                Todos los grupos
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6"> 
                            <div class="footerwidget"> 
                                <h4>Contacto</h4> 
                                <p>Lorem reksi this dummy text unde omnis iste natus error sit volupum</p>
                                <div class="contact-info"> 
                                    <i class="fa fa-map-marker"></i>Huerfanos 1234 - Santiago de Chile<br>
                                    <i class="fa fa-phone"></i>+00 123 156 711 <br>
                                    <i class="fa fa-envelope-o"></i> contacto@capacitate.com
                                </div> 
                            </div><!-- end widget --> 
                        </div>
                    </div>
                </div>
                <div class="social text-center">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>
                </div>

                <div class="clear"></div>
                <!--CLEAR FLOATS-->
            </div>
            <div class="footer2">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="simplenav">
                                    <a href="index.html">Home</a> | 
                                    <a href="about.html">Sobre Nosotros</a> |
                                    <a href="courses.html">Cursos</a> |
                                    <a href="price.html">Precios</a> |
                                    <a href="videos.html">Videos</a> |
                                    <a href="contact.html">Login</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 panel">
                            <div class="panel-body">
                                <p class="text-right">
                                    Copyright &copy; 2018.<a href="http://webthemez.com/" rel="develop">www.capatitate.cl</a>
                                </p>
                            </div>
                        </div>

                    </div>
                    <!-- /row of panels -->
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    </body>
</html>
