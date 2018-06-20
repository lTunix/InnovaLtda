<%-- 
    Document   : Entrada.jsp
    Created on : 19-06-2018, 22:29:22
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
                <h2>Este es el título de la Entrada</h2>
                <p><b>Esta es la descripción de la entrada.</b></p>
                <br>
                <p>Este es el contenido no muy extenso de la entrada.</p>
            </div>
            <br>
            <div>
                <table class="bordered">
                    <h3>Recursos</h3>
                    <thead>
                        <tr>
                            <th>Vista previa</th>
                            <th>Título</th>
                            <th>Año de creación</th>
                            <th>Tipo de recurso</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><img src="images/Intranet_Alumno/Cursos/Unidad/A1.png"/></td>
                            <td>Este es el título</td>
                            <td>2018</td>
                            <td>Video</td>
                            <td>
                                <a class="btn-floating red" href="Recurso.jsp">ABRIR</a>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="images/Intranet_Alumno/Cursos/Unidad/A2.png"/></td>
                            <td>Este es el segundo título</td>
                            <td>2018</td>
                            <td>Pdf</td>
                            <td>
                                <a class="btn-floating red" href="Recurso.jsp">ABRIR</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <a href="Unidad_Entradas.jsp">Volver</a>
        </div>
    </body>
</html>
