<%-- 
    Document   : centrodeayuda
    Created on : 18-06-2018, 19:11:07
    Author     : ratedxpw
--%>

<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8" />
        <meta name="keywords" content="chat" />
        <link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <script src="js/jquery-2.2.3.min.js"></script>
        <!-- <script type="text/javascript" src="js/numscroller-1.0.js"></script> --> 
        <script src="js/bootstrap.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Centro de Ayuda</h1>
        <%  Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");%>
        <div class="container">
            <c:if test="${not empty user}">
                <div class="row">
                    <div class="col s12">

                        <!--Start of Zendesk Chat Script-->
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
                        <!--End of Zendesk Chat Script--> 


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

    </body>

</html>
