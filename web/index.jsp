<%-- 
   Document   : menualumnos
   Created on : 19/04/2018, 08:17:38 AM
   Author     : esteban.jofre
   --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html lang="es">
   <head>
      <title>Cursos - Certificaciones</title>
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
      <link type="text/css" rel="stylesheet" href="css/seleccionlogin.css"/>
      <link href="css/estilomenunav.css" rel="stylesheet" type="text/css" media="all" />
      <script src="js/jquery-2.2.3.min.js"></script>
      <!-- <script type="text/javascript" src="js/numscroller-1.0.js"></script> --> 
      <script src="js/bootstrap.js"></script>
      <link href="css/font-awesome.css" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
   </head>
   <body>
      <!-- CABEZERA -->
      <div class="cabezeramenucursos" id="cabezeramenucursos">
         <!-- cabezeramenucursos -->
         <div id="top-cabezeramenucursos">
            <div class="container">
               <div class="cabezeramenucursos-links">
                  <ul>
                     <div class="dropdown">
                        <li><a href=""><i class="fa fa-sign-in"></i> Entrar</a></li>
                        <div class="dropdown-content">
                           <a href="login.jsp">Alumno</a>
                           <a href="logindocente.jsp">Docente</a>
                           <a href="logincoordinador.jsp">Coordinador</a>
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
                  </ul>
               </div>
            </div>
         </div>
         <!-- /Top cabezeramenucursos -->
         <!-- menu-->
         <div class="barraMenu-figures">
            <div class="barraMenu">
               <div class="contenedorMenunav -drop">
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
                                 <input class="sb-search-input" placeholder="Ingrese Curso..." type="search" name="search" id="search">
                                 <input class="sb-search-submit" type="submit" value="">
                                 <span class="sb-icon-search"> </span>
                              </form>
                           </div>
                        </div>
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
         <!-- Cabezera LOGO -->
         <!-- MENU-->				
         <!-- /centrarmenucursos cabezeramenucursos -->
         <!-- MENU  --
            <div id="nav-cabezeramenucursos">
            	<div class="container">
            		<nav id="main-nav">
            			<div class="nav-logo">
            				<a href="#" class="logo"><img src="./img/logo-alt.png" alt=""></a>
            			</div>
            			<ul class="main-nav nav navbar-nav">
            				<li class="active"><a href="index.jsp">INICIO</a></li>
            				<li><a href="#">SOBRE NOSOTROS</a></li>
            				
            				<li><a href="#">CURSOS</a></li>
                                                                 <li><a href="#">PRECIOS</a></li>
            				<li><a href="contacto.jsp">Contacto</a></li>
            				
            			</ul>
            		</nav>
            
                                             <!-- BUSCADOR --
                                         </b> </br>
                  <div>
                     <form action="#" method="post">
                         <div class="input-group">
                             <input type="text" class="form-control" placeholder="Buscar" name="txt_Buscar" required="">
                           <div class="input-group-btn">
                             <button class="btn btn-default" type="submit">
                               <i class="glyphicon glyphicon-search"></i>
                             </button>
                           </div>
                         </div>
                     </form>
                 </div>
                 <!-- BUSCADOR -->
         </div>
         </div>
         <!-- /Nav cabezeramenucursos -->
      </cabezeramenucursos>
      <!-- MENU  -->
      <!-- //CABEZERA IMAGENES PRINCIPALES   data zs js plug de imagenes EFECTO ZOOMSLIDER.CSS  -->
      <div id="demo-1" data-zs-src='["images/b1.jpg","images/b2.jpg","images/b3.jpg","images/b4.jpg","images/b5.jpg"]' data-zs-overlay="dots">
         <div class="demo-inner-content">
            <!-- //FIN CABEZERA IMAGENES PRINCIPALES   data zs js plug de imagenes  EFECTO ZOOMSLIDER.CSS  -->
            <!--TEXTO ENSIMA DE LAS IMAGENES PRINCIPALES CON ZOOM.CSS -->
            <div class="informacionprincipal">
               <h4>Innova.cl </h4>
               <h3>Cursos a Distancia </h3>
               <p>Innova + que Una solucion </p>
               <!--FIN TEXTO ENSIMA DE LAS IMAGENES PRINCIPALES CON ZOOM.CSS -->
               <a class="recprincipal forma" href="promociones.jsp"> Promociones</a> 
            </div>
            </br> </br></br> </br></br> </br></br> </br></br>
         </div>
      </div>
      <div id="perfiles01" class="perfil001 seccionesperfil">
      <div class="container">
      <!-- CONTAINER SE ENCUENTRA EN .CSS BOOTSTRAP-->
      <div class="contenedor02 centrartxtperfil">
         <div class="circulosperfiles001">
            <div class="perfileshome" id="perfiless">
               <div class="perfiles02">
                  <div class="col-md-3 col-sm-4 col-xs-4 circulosperfiles centrartxtperfil">
                     <div class="infoper seleccionitem circuloperf colored effect17 ">
                        <div class="img">
                           <img src="images/d1.png" class="img-responsive" alt="img">
                        </div>
                        <div class="informacion">
                           <p> <a href="logindocente.jsp"> Docente    </a> </p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 col-sm-4 col-xs-4 circulosperfiles centrartxtperfil">
                     <div class="infoper seleccionitem circuloperf colored effect17">
                        <div class="img">
                           <img src="images/a1.png" class="img-responsive" alt="img">
                        </div>
                        <div class="informacion">
                           <p><a href="login.jsp">Alumno</a></p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 col-sm-4 col-xs-4 circulosperfiles centrartxtperfil">
                     <div class="infoper seleccionitem circuloperf colored effect17">
                        <div class="img">
                           <img src="images/c1.png" class="img-responsive" alt="img">
                        </div>
                        <div class="informacion">
                           <p><a href="logincoordinador.jsp">Coordinador </a></p>
                        </div>
                     </div>
                  </div>
                  <div class="clearfix"></div>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
      </div>
      <!-- Cursos -->
      <div class="container">
         <div class="row">
            <div class="col-md-3">
               <div class="grey-box-icon">
                  <div class="icon-box-top grey-box-icon-pos">
                     <img src="images/1.png" alt="" />
                  </div>
                  <!--icon box top -->
                  <h4>Cursos Online</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
                     eset nec lacus elit dor broma.
                  </p>
                  <p><a href="cursos.jsp"><em>Ver más</em></a></p>
               </div>
               <!--grey box -->
            </div>
            <!--/span3-->
            <div class="col-md-3">
               <div class="grey-box-icon">
                  <div class="icon-box-top grey-box-icon-pos">
                     <img src="images/2.png" alt="" />
                  </div>
                  <!--icon box top -->
                  <h4>Nuestro Equipo</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
                     eset nec lacus elit dor broma.
                  </p>
                  <p><a href="SobreNosotros.jsp"><em>Ver más</em></a></p>
               </div>
               <!--grey box -->
            </div>
            <!--/span3-->
            <div class="col-md-3">
               <div class="grey-box-icon">
                  <div class="icon-box-top grey-box-icon-pos">
                     <img src="images/3.png" alt="" />
                  </div>
                  <!--icon box top -->
                  <h4>Actualizaciones</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
                     eset nec lacus elit dor broma.
                  </p>
                  <p><a href="#"><em>Ver más</em></a></p>
               </div>
               <!--grey box -->
            </div>
            <!--/span3-->
            <div class="col-md-3">
               <div class="grey-box-icon">
                  <div class="icon-box-top grey-box-icon-pos">
                     <img src="images/4.png" alt="" />
                  </div>
                  <!--icon box top -->
                  <h4>Foros</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempus eleifend risus ut congue
                     eset nec lacus elit dor broma.
                  </p>
                  <p><a href="#"><em>Ver más</em></a></p>
               </div>
               <!--grey box -->
            </div>
         </div>
      </div>
      <!--
         <h3 class="flechmtitulos">
             <span>C</span>APACITATE.CL</h3>
         <h5>TITULO</h5>
         <div class="col-md-7  parraiz">
             <p>TEXTO </p>
             <p class="txt02">TEXTO</p>
         </div>
         <div class="col-md-5 filaimg">
             <div class="col-md-6 col-sm-6 ">
                 <img src="images/primera.png" class="img-responsive" alt="" />
             </div>
             <div class="col-md-6 col-sm-6 filaimg ">
                 <img src="images/segunda.jpg" class="img-responsive" alt="" />
             </div>
             <div class="clearfix"> </div>
         </div>
         <div class="clearfix"> </div>
         
         </div>
         </div> 
         
         </br> </br>
         <!-- Cursos --
         <div class="certificado seccionesperfil">
         <div class="container">
         <h3 class="flechmtitulos">
             <span>C</span>URSOS</h3>
         <div class="grid">
             <figure class="col-md-3 col-xs-6 flotarmenu">
                 <img src="images/g1.jpg" alt="t1" class="img-responsive" />
                 <figcaption>
                     <h4>Informatica</h4>
                 </figcaption>
             </figure>
             <figure class="col-md-3 col-xs-6  flotarmenu ">
                 <img src="images/g1.jpg" alt="t2" class="img-responsive" />
                 <figcaption>
                     <h4>Automotriz</h4>
                 </figcaption>
             </figure>
             <figure class="col-md-3 col-xs-6 flotarmenu s3">
                 <img src="images/g1.jpg" alt="t1" class="img-responsive" />
                 <figcaption>
                     <h4> TEXTO</h4>
                 </figcaption>
             </figure>
             <figure class="col-md-3 col-xs-6 flotarmenu s4">
                 <img src="images/g1.jpg" alt="t3" class="img-responsive" />
                 <figcaption>
                     <h4>TEXTO</h4>
                 </figcaption>
             </figure>
             <div class="clearfix"></div>
             <figure class="col-md-3 col-xs-6  flotarmenu ">
                 <img src="images/g1.jpg" alt="t2" class="img-responsive" />
                 <figcaption>
                     <h4>TEXTO</h4>
                 </figcaption>
             </figure>
             <figure class="col-md-3 col-xs-6 flotarmenu s4">
                 <img src="images/g1.jpg" alt="t3" class="img-responsive" />
                 <figcaption>
                     <h4>TEXTO </h4>
                 </figcaption>
             </figure>
         
             <figure class="col-md-3 col-xs-6 flotarmenu">
                 <img src="images/g1.jpg" alt="t1" class="img-responsive" />
                 <figcaption>
                     <h4>TEXTO</h4>
                 </figcaption>
             </figure>
             <figure class="col-md-3 col-xs-6 flotarmenu s3">
                 <img src="images/g1.jpg" alt="t1" class="img-responsive" />
                 <figcaption>
                     <h4>TEXTO</h4>
                 </figcaption>
             </figure>
         </div>
         </div>
         </div>
         <!-- //menu -->
      </br> </br>
      <!--
         <h3 class="flechmtitulos">
                     <span>C</span>ertificaciones</h3> </br> 
         
         <div class="clumnac">
         <ul class="precios">
         <li class="nombrec">Windows</li>
         <li class="grey">$ 150.000</li>
         <li>50 horas</li>
         <li>texto</li>
         <li>texto</li>
         
         <li class="grey"><a href="#" class="botonverc">Ver Curso</a></li>
         </ul>
         </div>
         
         <div class="clumnac">
         <ul class="precios">
         <li class="nombrec" style="background-color:#1e98d1">Linux</li>
         <li class="grey">$ 90.000</li>
         <li>40 horas</li>
         <li>texto</li>
         <li>texto</li>
         <li class="grey"><a href="#" class="botonverc">Ver Curso</a></li>
         </ul>
         </div>
         
         <div class="clumnac">
         <ul class="precios">
         <li class="nombrec">Java servlet</li>
         <li class="grey">$ 120.000 </li>
         <li>20 horas</li>
         <li>texto</li>
         <li>texto</li>
         <li class="grey"><a href="#" class="botonverc">Ver Curso</a></li>
         </ul>
         </div>
         
         </br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
         
         <!-- PIE DE PAGINA -->
      <div class="contenedorpie"></div>
      
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
      <!-- PIE DE PAGINA -->
      <!--BUSCADOR scripts-->
      <script src="js/buscador/classie.js"></script>
      <script src="js/buscador/uisearch.js"></script>
      <script>
         new UISearch( document.getElementById( 'sb-search' ) );
      </script>
      <!--//BUSCADOR-scripts-->
      <!-- MOVIMIENTO IMG  -->
      <script src="js/modernizr-2.6.2.min.js"></script>
      <script src="js/jquery.zoomslider.min.js"></script>
      <!-- //GALERIA -->
      <script src="js/jquery.tools.min.js"></script>
      <script src="js/jquery.mobile.custom.min.js"></script>
      <script src="js/jquery.cm-overlay.js"></script>
      <!-- menu-->
      <!-- js MENU DESPLEGABLE-->
      <script>
         (function($){
           $(".menu-icon").on("click", function(){
         		$(this).toggleClass("open");
         		$(".contenedorMenunav").toggleClass("nav-open");
         		$("nav ul li").toggleClass("animate");
           });
           
         })(jQuery);
      </script>
      <!-- js MENU DESPLEGABLE-->
      <script>
         $(document).ready(function () {
             $('.cm-overlay').cmOverlay();
         });
      </script> 
      <!--  <link href="css/owl.carousel.css" rel="stylesheet">
         <script src="js/owl.carousel.js"></script>
         <script>
             $(document).ready(function () {
                 $("#owl-demo").owlCarousel({
                     items: 1,
                     lazyLoad: true,
                     autoPlay: false,
                     navigation: true,
                     navigationText: true,
                     pagination: true,
                 });
             });
         </script>
         
         <!-- inicia -rueda mouse 
         <script src="js/move-top.js"></script>
         <script src="js/easing.js"></script> 
         <script>
             jQuery(document).ready(function ($) {
                 $(".scroll").click(function (event) {
                     event.preventDefault();
         
                     $('html,body').animate({
                         scrollTop: $(this.hash).offset().top
                     }, 1000);
                 });
             });
         </script> -->
      <!-- <script src="js/SmoothScroll.min.js"></script>
         <script src="js/main.js"></script>  -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog modal-md">
            <div class="modal-content centrartxtperfil">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                  &times;</button>
                  <div class="col-md-9 col-sm-9 col-xs-9 sub-head">
                     <h4 class="modal-title" id="myModalLabel">
                        Informate de Promociones en CAPACITATE.CL
                     </h4>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3 sub-img">
                     <img src="images/news.png" alt="" class="img-responsive" />
                  </div>
                  <div class="clearfix"></div>
               </div>
               <div class="modal-body">
                  <div class="row">
                     <div class="newsletter">
                        <h6>TEXTO
                        </h6>
                        <form class="form-horizontal" method="post" action="#">
                           <div class="form-group">
                              <div class="col-sm-8">
                                 <input type="email" class="form-c" id="email1" placeholder="Ingrese su Email" />
                              </div>
                              <div class="col-sm-4">
                                 <button type="submit" class="btn btn-primary btn-sm">
                                 Enviar</button>
                              </div>
                              <div class="clearfix"></div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script>
         $('#myModal').modal('show');
      </script>
   </body>
</html>