<%-- 
    Document   : Curso_Unidades
    Created on : 19-06-2018, 21:20:05
    Author     : Horacio
--%>

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
    %>
    <body>
        <div class="container">
            <div>
                <img src="images/Intranet_Alumno/Cursos/A1.png"/>
                <h2>Este es el título del curso</h2>
                <p><b>Esta es la descripción del curso</b></p>
                <p><b>Fecha de Inicio:</b> 2018-02-12</p>
                <p><b>Fecha de Término:</b> 2018-11-17</p>
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
                                <a class="btn-floating red" href="">INGRESAR</a>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="images/Intranet_Alumno/Cursos/Unidad/A2.png"/></td>
                            <td>Este es el segundo título</td>
                            <td>Esta es la segunda descripción</td>
                            <td>80 horas</td>
                            <td>
                                <a class="btn-floating red" href="">INGRESAR</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <a href="cargaCursosPersonales.do?rut_fulano=${sessionScope.user.rut}">Volver</a>
        </div>
    </body>
</html>
