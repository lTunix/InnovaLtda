<%@page import="BaseDatos.ConexionBD"%>
<%@page import="BaseDatos.ConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prueba de conexion MySQL</h1>
          <% 
            ConexionBD conex = new ConexionBD();
            if(conex.abrirConexion() != null){
                %>
                Conexion exitosa!!!!
                <% 
            }
        %>
    </body>
</html>
