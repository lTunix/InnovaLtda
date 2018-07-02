<%@page import="Modelo.Evaluacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Modelo.Usuario"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        

<!DOCTYPE html>
<html>
    <head>
        <link href="css/centrodeayuda.css" type="text/css" rel="stylesheet" media="all">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <title>Notas del Alumno</title>
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
    %>
    <body>
        <div class="example3">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                        </a>
                    </div>
                    <div id="navbar3" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}">Mi Cursos</a></li>
                            <li><a href="centrodeayuda.jsp">Ayuda</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>

                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>
        </div>
        
        <div class="container">
            <% if (usuario != null) {%>
            <div class="row">
                <div class="col s10 offset-s1">
                    <h2><b>Ingreso de Notas</b></h2>
                    <p class="flow-text" align="justify">En esta sección podrá ingresar notas a los alumnos que hayan rendido evaluaciones</p>
                </div>
                
                <div class="col s10 offset-s1"> 
                    <table class="table">
                        <thead>
                            <tr>                               
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Paterno</th>
                                
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.ListaAlumnos}" var="a">
                                <tr>                                    
                                    <td>${a.nombre}</td>
                                    <td>${a.apellido_paterno}</td>
                                    <td>${a.apellido_materno}</td>
                                                                                                   
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br>
                    <a href="ingreso.do?txt_correoUser=${sessionScope.user.email}&txt_passUser=${sessionScope.user.pass}">Volver</a>
                </div>
            </div>
            <% } else { %>
            <div class="row">
                <div class="col s12">
                    <h3>Debe iniciar sesión para acceder a los contenidos</h3>
                    <a href="login.jsp">Ir al acceso</a>
                </div>
            </div>
            <% }%>
        </div>
    </body>
</html>
