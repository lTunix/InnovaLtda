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
        <h1>Hello World!</h1>
    </body>
</html>
