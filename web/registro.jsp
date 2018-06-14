<%-- 
    Document   : registro
    Created on : 27-03-2018, 14:07:13
    Author     : Lyonel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <script>
            function validarNom() {
		var letras = /^[A-Za-z]+$/;  
      
		if(document.getElementsByName("txtnombres")[0].value.match(/^[A-Za-z]+$/)){ 
			document.getElementById('errNom').innerHTML="";
		}else{
			document.getElementById('errNom').innerHTML="Debe ingresar sólo letras";
			document.getElementById("nombre").focus();			
			alert("Debe ingresar sólo letras");  
		
		}  
		}
                
                function validarApe() {
		
      
			if(document.getElementsByName("txtapellidos")[0].value.match(/^[A-Za-z]+$/)){ 
			document.getElementById('errApe').innerHTML="";
			}else{  
			document.getElementById('errApe').innerHTML="Debe ingresar sólo letras";
			document.getElementById('apellido').focus();
			alert("Debe ingresar solo letras");  
			
			}  
		}
            
        </script>
    </head>
    <body>
        <form method="post" action="registro_bdd.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Ingrese su información aquí</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txt_nombre" value="" required="" id="nombre" onclick="validarNom()"/></td>
                    </tr>
                    <tr>
                        <td>Apellido</td>
                        <td><input type="text" name="txt_apellido" value="" required="" id="apellido" onclick="validarApe"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="txt_email" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Nombre de usuario</td>
                        <td><input type="text" name="txt_nomUser" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="txt_pass" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" /></td>
                        <td><input type="reset" value="Borrar" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Ya se encuentra registrado!! <a href="login.jsp">Ingrese aquí</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
