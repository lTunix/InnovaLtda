
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Innova Capacitaciones | Centro de Ayuda</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="" />
       
        <!-- 
        css-->
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/centrodeayuda.css" type="text/css" rel="stylesheet" media="all"> 
        <link href="css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
        <link rel="stylesheet" href="css/jquery.gallery.css">
        <!-- //Custom Theme files -->
        <!-- js -->
        <script src="js/ayuda/jquery-2.2.3.min.js"></script> 
        <!-- //js -->
        
    </head>
    <body> 
        <!-- banner -->
        <div class="w3ls-banner">
            <div class="w3lsbanner-info">
                <div class="header">
                    <div class="container">
                        <div class="header-left">
                            <div class="w3layouts-logo">
                                <h1>
                                    <a href="centrodeayuda.jsp">Bienvenido al </br>Centro de Ayuda Online</a>
                                </h1>
                            </div>
                        </div>
                        <div class="header-right">
                            <div class="agileinfo-social-grids">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

                <div class="w3layouts-banner-info">
                    <div class="container">
                        <div class="w3layouts-banner-slider">
                            <div class="w3layouts-banner-top-slider">
                                <div class="slider">
                                    <div class="callbacks_container">
                                        <ul class="rslides callbacks callbacks1" id="slider4">
                                            <li>
                                                <div class="w3ls-text">
                                                    <div class="w3ls-text-info">
                                                        <h2>¿Necesitas Ayuda?</h2>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="w3ls-text">
                                                    <div class="w3ls-text-info">
                                                        <h2>Te Ayudamos 24/7</h2>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"> </div>
                                    <script src="js/ayuda/responsiveslides.min.js"></script>
                                    <script>
                                        // You can also use "$(window).load(function() {"
                                        $(function () {
                                            // Slideshow 4
                                            $("#slider4").responsiveSlides({
                                                auto: true,
                                                pager: true,
                                                nav: true,
                                                speed: 500,
                                                namespace: "callbacks",
                                                before: function () {
                                                    $('.news').append("<li>before event fired.</li>");
                                                },
                                                after: function () {
                                                    $('.news').append("<li>after event fired.</li>");
                                                }
                                            });

                                        });
                                    </script>
                                    <!--banner Slider starts Here-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <!-- //banner -->


        <!-- Contacto -->
        <div id="team" class="jarallax team">
            <div class="team-dot">
                <div class="container"> 
                    <div class="agileits-title w3title1">
                        <h3>Te Ayudamos?</h3>
                        <p> </p>
                    </div>
                    <div class="agileits-team-grids">
                        <div class="col-md-3 agileits-team-grid">
                            <div class="team-info">
                                <img src="images/t01.jpg" alt="">
                                <div class="team-caption"> 
                                    <h4>Contacto</h4>
                                    <p class="fa fa-phone" aria-hidden="true">
                                       <a href="tel:6006373737" > 600 637 3737</a>
                                    </p>
                                    <p class="fa fa-mobile" aria-hidden="true">
                                       <a href="tel:226373737" > +56 2 26373737</a>
                                    </p>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 agileits-team-grid">
                            <div class="team-info">
                                <img src="images/t2.jpg" alt="">
                                <div class="team-caption"> 
                                    <h4>Chat</h4>
                                    <p>27/4</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 agileits-team-grid">
                            <div class="team-info">
                                <img src="images/t3.jpg" alt="">
                                <div class="team-caption"> 
                                    <h4>Redes Sociales</h4>
                                    <p class="fa fa-twitter" aria-hidden="true">
                                        <a href="http://www.twitter.com/" >@InnovaCapacitaciones</a>
                                    </p>


                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 agileits-team-grid">
                            <div class="team-info">
                                <img src="images/t4.jpg" alt="">
                                <div class="team-caption"> 
                                    <h4>Correo</h4>
                                    <p class="fa fa-twitter" aria-hidden="true">
                                        <a href="mailto:informacion@innovacapacitaciones.cl" >informacion@innovacapacitaciones.cl</a>
                                    </p>


                                </div>
                            </div>
                        </div>

                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Contacto -->





        <!-- address -->
        <div class="address">
            <div class="container">  
                <div class="address-grids">
                    <div class="col-md-6 address-left">
                        <h5><a href="#">Listo Para Aprender?</a></h5>
                        <p>Cotiza Nuestros Cursos 100% Online </p>
                    </div>
                    <div class="col-md-6 address-right">
                        <div class="address-w3grids">
                            <div class="col-xs-2 contact-grdl">
                                <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-10 contact-grdr">
                                <p>+56948750254</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="address-w3grids">
                            <div class="col-xs-2 contact-grdl">
                                <span class="glyphicon glyphicon-send" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-10 contact-grdr">
                                <p>Moneda #874,Santiag.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="address-w3grids">
                            <div class="col-xs-2 contact-grdl">
                                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-10 contact-grdr">
                                <p><a href="mailto:example@mail.com">informaciones@innovacapacitaciones.cl</a></p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //address -->

        <!-- copy-right -->
        <div class="w3agile_copy_right">
            <div class="container">
                <p>Â© 2018 Innova. All Rights Reserved </p>
            </div>
        </div>
        <!-- //copy-right --> 
        <!-- jarallax -->  
        <script src="js/ayuda/SmoothScroll.min.js"></script> 
        <script src="js/ayuda/jarallax.js"></script> 
        <script type="text/javascript">
                                        /* init Jarallax */
                                        $('.jarallax').jarallax({
                                            speed: 0.5,
                                            imgWidth: 1366,
                                            imgHeight: 768
                                        })
        </script>  
        <!-- //jarallax -->  
        <!-- start-smooth-scrolling -->
        <script type="text/javascript" src="js/ayuda/move-top.js"></script>
        <script type="text/javascript" src="js/ayuda/easing.js"></script>	
        <script type="text/javascript">
                                        jQuery(document).ready(function ($) {
                                            $(".scroll").click(function (event) {
                                                event.preventDefault();

                                                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                                            });
                                        });
        </script>
        <!-- //end-smooth-scrolling -->	
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->  
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/ayuda/bootstrap.js"></script>

        <!-- CHAT -->
        <script type="text/javascript">
            window.$zopim || (function (d, s) {
                var z = $zopim = function (c) {
                    z._.push(c)
                }, $ = z.s =
                        d.createElement(s), e = d.getElementsByTagName(s)[0];
                z.set = function (o) {
                    z.set.
                            _.push(o)
                };
                z._ = [];
                z.set._ = [];
                $.async = !0;
                $.setAttribute("charset", "utf-8");
                $.src = "https://v2.zopim.com/?5n9qWHPlXuHdJJoGXqx5o8DrQhxrhpQg";
                z.t = +new Date;
                $.
                        type = "text/javascript";
                e.parentNode.insertBefore($, e)
            })(document, "script");
        </script>

        <!-- CHAT-->

    </body>
</html>