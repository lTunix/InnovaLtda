
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido a la Intranet Docente</h1>
        <%
            ConexionBD conex = new ConexionBD();
            if (conex.abrirConexion() != null) {
        %>
        Conexion exitosa!!!!
        <%
            }
        %>
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
    </body>
</html>
