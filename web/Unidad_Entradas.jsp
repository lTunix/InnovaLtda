<%-- 
    Document   : Unidad_Entradas
    Created on : 19-06-2018, 22:02:13
    Author     : Horacio
--%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Usuario usuario = (Usuario) session.getAttribute("user");
    %>
    <body>
        <div class="container">
            <div>
                <img src="images/Intranet_Alumno/Cursos/A1.png"/>
                <h2>Este es el título de la Unidad</h2>
                <p><b>Esta es la descripción de la unidad.</b></p>
                <p><b>Duración:</b> 50 horas</p>
            </div>
            <br>
            <div>
                <table class="bordered">
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
                        <tr>
                            <td><img src="images/Intranet_Alumno/Cursos/Unidad/A1.png"/></td>
                            <td>Este es el título</td>
                            <td>Esta es la descripción</td>
                            <td>50 horas</td>
                            <td>
                                <a class="btn-floating red" href="Unidad_Entradas.jsp">INGRESAR</a>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="images/Intranet_Alumno/Cursos/Unidad/A2.png"/></td>
                            <td>Este es el segundo título</td>
                            <td>Esta es la segunda descripción</td>
                            <td>80 horas</td>
                            <td>
                                <a class="btn-floating red" href="Unidad_Entradas.jsp">INGRESAR</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <a href="cargaCursosPersonales.do?rut_fulano=${sessionScope.user.rut}">Volver</a>
        </div>
    </body>
</html>
