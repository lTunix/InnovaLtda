<%-- 
    Document   : Cursos
    Created on : 21-may-2018, 12:45:15
    Author     : ksandoval
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="css/bootstrap-theme.css" media="screen"> 
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/estilo.css" type="text/css" rel="stylesheet" media="all">
        <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
        <link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
        <link type="text/css" rel="stylesheet" href="css/estilomenucursos.css"/>
        <link type="text/css" rel="stylesheet" href="css/piedepagina.css"/>
        <link type="text/css" rel="stylesheet" href="css/contactocss.css" />
        <link type="text/css" rel="stylesheet" href="css/seleccionlogin.css"/>
        <link href="css/estilomenunav.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-2.2.3.min.js"></script>
        <!-- <script type="text/javascript" src="js/numscroller-1.0.js"></script> --> 
        <script src="js/bootstrap.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
        <link rel="stylesheet" href="buscadorinterno/css/estilos.css">
        <script src="buscadorinterno/js/jquery.dataTables.min.js"></script>
    </head>

    <body>
    <cabezeramenucursos id="cabezeramenucursos">
        <!-- cabezeramenucursos -->
        <div id="top-cabezeramenucursos">
            <div class="container">
                <div class="cabezeramenucursos-links">
                    <ul>
                        <div class="dropdown">
                            <li><a href=""><i class="fa fa-sign-in"></i> Entrar</a></li>
                            <div class="dropdown-content">
                                <a href="login.jsp">Alumno</a>
                                <a href="login.jsp">Docente</a>
                                <a href="login.jsp">Coordinador</a>
                            </div>
                        </div>
                        <li><a href="FormularioRegistro.jsp"><i class="fa fa-sign-in"></i> Registro</a></li>
                    </ul>
                </div>
                <div class="cabezeramenucursos-social">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="https://api.whatsapp.com/send?phone=56945077534"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>

                    </ul>
                </div>
            </div>
        </div>
        <!-- menu-->

        <div class="barraMenu-figures">
            <div class="barraMenu">
                <div class="contenedorMenunav barraMenu-drop">
                    <div class="cabezeraMenunav">
                        <div class="cabezeraMenunav-left">

                        </div>
                        <div class="cabezeraMenunav-right">
                            <nav>
                                <ul>
                                    <li class="active">
                                        <a href="index.jsp" class="active"><span>Inicio</span></a>
                                    </li>
                                    <li>
                                        <a href="SobreNosotros.jsp" class="scroll"><span>Sobre Nosotros</span></a>
                                    </li>
                                    <li>
                                        <a href="cursos.jsp" class="scroll"><span>Cursos</span></a>
                                    </li>
                                    <li>
                                        <a href="promociones.jsp" class="scroll"><span>Promociones</span></a>
                                    </li>
                                    <li>
                                        <a href="contacto.jsp" class="scroll"><span>Contacto</span></a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="menu-icon animated wow zoomIn" data-wow-duration="1000ms" data-wow-delay="800ms"><span></span></div>


                            <!-- start search-->
                            <div class="search-box">
                                <div id="sb-search" class="sb-search">
                                    <form action="#" method="post">
                                        <input class="sb-search-input" placeholder="Ingrese Curso..." type="search" name="search" id="input-search">
                                        <div class="content-search">
                                            <div class="content-table">
                                                <table id="table">
                                                    <thead>
                                                        <tr>
                                                            <td></td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <tr>
                                                            <td><a href="cursos.jsp">Cursos</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="promociones.jsp">Promociones</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="login.jsp">Iniciar sesion</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="login.jsp">Iniciar sesion Alumno</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="logindocente.jsp">Iniciar sesion Docente</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="logincoordinador.jsp">Iniciar sesion Coordinador</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="login.jsp">Mesa de Ayuda</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="contacto.jsp">Ayuda</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="contacto.jsp">Contacto</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="foro.jsp">foro</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="Actualizaciones.jsp">Actualizaciones</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="cursos.jsp">Carreras</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="cursos.jsp">Informatica</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="curso1.jsp">Contabilidad</a></td>
                                                        </tr>

                                                        <tr>
                                                            <td><a href="FormularioRegistro.jsp">Registro Usuario</a></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <input class="sb-search-submit" type="submit" value="">
                                        <span class="sb-icon-search"> </span>
                                    </form>
                                </div>
                            </div>



                            <!--  FIN BUSCADOR    -->
                        </div>
                        <div class="clearfix"> </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="centrarmenucursos-cabezeramenucursos">
        <div class="container">
            <div class="cabezeramenucursos-logo">
                <a href="index.jsp" class="logo"><img src="images/logo02.png" alt=""></a>
            </div>
        </div>
    </div>

    <div class="contact">
        <div class="container">
            <h3 class="titulo">Foro</h3>
            <div class="clearfix"></div>
            <div class="container">
                <h2>Proximamente!</h2>
                <br>  <br>  <br>

                <footer id="pie">
                    <div class="containerpie">
                        <ul>
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="SobreNosotros.jsp">Nosotros</a></li>
                            <li><a href="cursos.jsp">Cursos</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>
                        </ul>
                        <p class="pie-copyright">© 2018 Innova </p>
                    </div>
                    <div class="pie-social">
                        <a href="#" class="social-icons"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-icons"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="social-icons"><i class="fa fa-twitter"></i></a>
                    </div>
                </footer>

                <!--BUSCADOR scripts-->
                <script src="js/buscador/classie.js"></script>
                <script src="js/buscador/uisearch.js"></script>
                <script>
                    new UISearch(document.getElementById('sb-search'));
                </script>


                <!-- menu-->
                <!-- js MENU DESPLEGABLE-->


                <script>
                    (function ($) {
                        $(".menu-icon").on("click", function () {
                            $(this).toggleClass("open");
                            $(".contenedorMenunav").toggleClass("nav-open");
                            $("nav ul li").toggleClass("animate");
                        });

                    })(jQuery);
                </script>
                <!-- js MENU DESPLEGABLE-->


                <script src="buscadorinterno/js/search.js"></script>
                </body>
                </html>
