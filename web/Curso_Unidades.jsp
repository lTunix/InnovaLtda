<%-- 
    Document   : Curso_Unidades
    Created on : 19-06-2018, 21:20:05
    Author     : Horacio
--%>

<%@page import="modelo_intranet_alumnos_curso.Curso"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unidades del Curso</title>
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
        Curso curso = (Curso) request.getAttribute("curso");
    %>
    <body>
        <div class="container">

            <% if (usuario != null) {%>

            <div>
                <img src="images/Intranet_Alumno/Cursos/A1.png"/>
                <h2><%=curso.getTitulo()%></h2>
                <p><b><%=curso.getDescripcion()%></b></p>
                <p><b>Fecha de Inicio:</b> <%=curso.getFecha_inicio()%></p>
                <p><b>Fecha de Término:</b> <%=curso.getFecha_termino()%></p>
            </div>
            <br>
            <div>
                <table class="bordered">
                    <h3>Unidades</h3>
                    <thead>
                        <tr>
                            <th> </th>
                            <th>Título</th>
                            <th>Descripción</th>
                            <th>Duración</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.listaUnidades}" var="u">
                            <tr class="row100">
                                <td><img src="images/Intranet_Alumno/Cursos/Unidad/${u.imagen_unidad}.png"/></td>
                                <td>${u.titulo_unidad}</td>
                                <td>${u.descripcion}</td>
                                <td>${u.duracion}</td>
                                <td>
                                    <a class="btn-floating red" href="Unidad_Entradas.jsp">INGRESAR</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br>
            <a href="cargaCursosPersonales.do?rut_fulano=${sessionScope.user.rut}">Volver</a>

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
