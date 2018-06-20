<%@page import="Modelo.Evaluacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Modelo.Usuario"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notas del Alumno</title>
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
    %>
    <body>
        <div class="container">
            <% if (usuario != null) {%>
            <div class="row">
                <div class="col s10 offset-s1">
                    <h2><b>Notas Registradas</b></h2>
                    <p class="flow-text" align="justify">En esta sección podrá acceder a las notas de las evaluaciones ya realizadas y revisadas.</p>
                </div>
                
                <div class="col s10 offset-s1"> 
                    <table class="bordered">
                        <thead>
                            <tr>                               
                                <th>Id Evaluacion</th>
                                <th>Entrada</th>
                                <th>Unidad</th>
                                <th>Curso</th>
                                <th>Puntaje Total</th>
                                <th>Nota Evaluación</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listaEvaluaciones}" var="e">
                                <tr>                                    
                                    <td>${e.id}</td>
                                    <td>${e.entrada}</td>
                                    <td>${e.unidad}</td>
                                    <td>${e.curso}</td>
                                    <td>${e.puntaje_total}</td>
                                    <td>${e.nota}</td>                                                                 
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
