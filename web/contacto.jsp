<%-- 
    Document   : Contacto
    Created on : 21-may-2018, 12:53:05
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
	<!-- //banner -->	
<!-- contacto -->
<div class="contact">
		<div class="container">
			<h3 class="titulo">Contacto</h3>
			<div class="col-md-3 col-sm-3 contact-left">
				<div class="address">
					<h4><i class="fa fa-map-marker" aria-hidden="true"></i>Ubicacion</h4>
					<p>Huerfanos 343</p>
					<p>Santiago,Chile</p>
				</div>
				<div class="phone">
					<h4><i class="fa fa-phone" aria-hidden="true"></i>Telefono</h4>
					<p>22 1234 567.</p>
					<p>22 123123.</p>
				</div>
				<div class="email">
					<h4><i class="fa fa-envelope-o" aria-hidden="true"></i>E-mail</h4>
					<p><a href="mailto:info@example.com">example@gmail.com</a></p>
					<p><a href="mailto:info@example.com">example2@gmail.com</a></p>
				</div>
			</div>
			<div class="col-md-9 col-sm-9 contact-right">
				<form action="#" method="post">
					<input type="text" name="nombre" placeholder="Tu Nombre" required="">
					<input type="email" name="email" placeholder="Tu email" required="">
					<input type="text" name="asunto" placeholder="Asunto" required="">
					<input type="text" name="telefono" placeholder="Numero de Telefono" required="">
					<textarea name="mensaje" placeholder="Mensaje" required=""></textarea>
					<input type="submit" value="Enviar">
				</form>
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

 <!-- PIE DE PAGINA -->
    
 <!--BUSCADOR scripts-->
	<script src="js/buscador/classie.js"></script>
	<script src="js/buscador/uisearch.js"></script>
	<script>
		new UISearch( document.getElementById( 'sb-search' ) );
	</script>
<!--//BUSCADOR-scripts-->

	
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

	

    </body>
</html>
