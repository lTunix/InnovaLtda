<%-- 
    Document   : Cursos_Personales
    Created on : 19-06-2018, 14:19:47
    Author     : Horacio
--%>

<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos Inscritos</title>
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
    %>
    <body>
        <div class="container">
            <% if (usuario != null) {%>
            <div class="row">
                <div class="col s10 offset-s1">
                    <h2><b>Cursos Inscritos</b></h2>
                    <p class="flow-text" align="justify">En esta sección podrá acceder a los cursos en los cuales esté inscrito.</p>
                    <p class="flow-text" align="justify">Para seleccionar el curso haga click 'INGRESAR'.</p>
                </div>
                
                <div class="col s10 offset-s1"> 
                    <table class="bordered">
                        <thead>
                            <tr>
                                <th> </th>
                                <th>Título</th>
                                <th>Descripción</th>
                                <th>Fecha de Inicio</th>
                                <th>Fecha de Término</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listaCursos}" var="c">
                                <tr>
                                    <td><img src="images/Intranet_Alumno/Cursos/${c.imagen}.png"</td>
                                    <td>${c.titulo}</td>
                                    <td>${c.descripcion}</td>
                                    <td>${c.fecha_inicio}</td>
                                    <td>${c.fecha_termino}</td>
                                    <td>
                                        <a class="btn-floating red" href="cursoSeleccionaado.do?id_curso=${c.id_curso}">INGRESAR</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <% } else { %>
            <div class="row">
                <div class="col s12">
                    <h3>Debe iniciar sesión para acceder a los contenidos</h3>
                    <a href="index.jsp">Ir al acceso</a>
                </div>
            </div>
            <% }%>
        </div>
    </body>
</html>
