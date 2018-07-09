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
        <!-- CABEZERA -->
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
        <!-- /Top cabezeramenucursos -->


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

    <!-- Cabezera LOGO -->
    <div id="centrarmenucursos-cabezeramenucursos">
        <div class="container">
            <div class="cabezeramenucursos-logo">
                <a href="index.jsp" class="logo"><img src="images/logo02.png" alt=""></a>
            </div>
            <!--<div class="cabezeramenucursos-ads">
                    <img class="centrarmenucursos-block" src="images/ad-.jpg" alt=""> 
            </div>-->
        </div>
    </div>
    <!-- //banner -->	
    <!-- contacto -->
    <div class="contact">
        <div class="container">

            <h3 class="titulo">Cursos</h3>





            <div class="clearfix"></div>
            <div class="container">
                <h2></h2>
                <p>Aquì Encontraras la oportunidad de estudiar una carrera online.</br>
                    Según tu disponibilidad horaria y localizacion geografica podras elegir cursarla en modalidad completamente online.</br>
                    Esto es posible gracias al modelo academico institucional flexible que se adapta a las necesidades de formacion de nuestros alumnos.
                </p>

                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Todas las Areas</a></li>
                    <li><a data-toggle="tab" href="#menu1">Administracion y Negocios</a></li>
                    <li><a data-toggle="tab" href="#menu2">Educacion</a></li>
                    <li><a data-toggle="tab" href="#menu3">Gastronomia</a></li>
                    <li><a data-toggle="tab" href="#menu4">Informatica</a></li>
                </ul>

                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active"> </br>
                        <h3>Cursos</h3> </br>
                        <li><a href="curso1.jsp">Contabilidad</a></li>
                        <li>Tecnico en Administracion de Empresas</li>
                        <li>Tecnico en Comercio Exterior</li>
                        <li>Tecnico en Gestion de Recursos Humanos</li>
                        <li>Tecnico en Logistica </li>
                        <li>Tecnico en Administracion Publica</li>
                        <li>Tecnico en Trabajo Social </li>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Cursos</h3>
                        <li>Contabilidad</li>
                        <li>Tecnico en Administracion de Empresa</li>
                        <li>Tecnico en Logistica</li>
                        <li>Tecnico en Prevencion de Riesgo</li>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3> Cursos</h3>
                        <li>Tecnico en Administracion Publica</li>
                        <li>Tecnico en Trabajo Social</li>
                    </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Cursos</h3>
                        <li>Gastronomia</li>
                    </div>

                    <div id="menu4" class="tab-pane fade">
                        <h3>Cursos</h3>
                        <li>Certificacion Linux</li>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- //contacto -->

    <!-- PIE DE PAGINA -->

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
