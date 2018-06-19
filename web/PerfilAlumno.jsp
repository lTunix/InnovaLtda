<%-- 
    Document   : PerfilAlumno
    Created on : 18-jun-2018, 16:30:36
    Author     : ksandoval
--%>
<%@page import="Modelo.Usuario"%>
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil de Alumno</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Menu Del Alumno" />
        <meta name="keywords" content="" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/estilo.css" type="text/css" rel="stylesheet" media="all">
        <link rel="stylesheet" type="text/css" href="css/menualumnos.css" />
        <script src="js/bootstrap.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <%  Usuario usuarioActual = (Usuario) request.getSession().getAttribute("user");%>
       <div class="container">
            <c:if test="${not empty user}">
                <div class="row">
                    <div class="col s12">
            
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
        <h1>Perfil de Alumno</h1>
         &nbsp;${sessionScope.user.nombre} 

        <div class="table-responsive" >
            <table class="table table-hover" border="1" cellspacing="1" cellpadding="1" >
                <thead>
                    <tr>
                        <th>Parametro</th>
                        <th>Valor Actual</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Rut: </td>
                        <td>${sessionScope.user.rut}</td>
                    </tr>
                    <tr>
                        <td>Nombre: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Apellido Paterno: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Apellido Materno: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Genero: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Profesion: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Contraseña: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Telefono de contacto: </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>

     
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    </body>
</html>
