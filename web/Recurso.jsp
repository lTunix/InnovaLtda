<%-- 
    Document   : Recurso
    Created on : 19-06-2018, 22:50:31
    Author     : Horacio
--%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recurso Educativo</title>
    </head>
    <body>
        <div class="container">
            <div>
                <img src="images/Intranet_Alumno/Cursos/A1.png"/><!--Esta es la vista previa; una imagen-->
                <h3><b>Título: </b>Este es el título del recurso</h3>
                <p><b>Año de creación: </b>2018</p>
                <p><b>Tipo de recurso: </b>Video</p>
                <p><b>Permisos: </b>Derechos Reservados</p>
                <br>
            </div>
            <br>
            <div>
                <div id="video_container">
                    <video controls width="50%" preload>
                        <source src="images/Intranet_Alumno/Cursos/Unidad/Entrada/Recurso/A1.mp4" type="video/mp4">
                    </video>
                </div>
                <div id="videoControls"> 
                    <div id="progress">  
                        <div id="progress_box">  
                            <span id="play_progress"></span> 
                        </div>  
                    </div>
                </div> 
            </div>
            <br>
            <a href="Entrada.jsp">Volver</a>
        </div>
    </body>
</html>
