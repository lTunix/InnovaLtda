<%-- 
    Document   : FormularioRegistro
    Created on : 20-may-2018, 16:21:03
    Author     : ksandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de registro de cursos</title>
        <script src="js/validar.js"></script>
        <script src="js/validarCURSO.js"></script>
        <link rel="stylesheet" href="css/registroCss.css">
        <link rel="favicon" href="images/favicon.png">
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css" media="screen">
        <script src="js/validar.js"></script>
    </head>
    <body>
        <h1>Formulario de Registro</h1>
        
        <p style="color:red; font-family: calibri; font-size:1.2em ">
            ${requestScope.msg}
        </p>
        <form action="RegistrarCurso.do" method="post" class="form-register" onsubmit="return validarCURSO();">
            <h2 class="form-titulo">Ingreso de Curso</h2>
            <div class="contenedor-input">
                <input type="text" id="id" name="txtId" placeholder="Ingrese el ID de curso" class="input-48" onblur="validNum();" required>
                <input type="text" id="descripcion" name="txtDescripcion" placeholder="Descripcion de curso" class="input-48" required>
                <input type="text" id="titulo" name="txtTitulo" placeholder="Titulo" class="input-48" required>
                <input type="text" id="imagen" name="txtImagen" placeholder="Imagen" class="input-48" required>
                <input type="text" id="unidad" name="txtUnidad" placeholder="Unidad" class="input-48" required>
                <input type="text" id="valor_otec" name="txtValorOtec" placeholder="Valor Otec" class="input-48" required>
                <input type="text" id="valor_usuario" name="txtValorUsuario" placeholder="Valor usuario" class="input-48" required>
                <br>
                <div class="row">
                    <p><b>Fecha de inicio</b></p>
                </div>
                <input type="date" id="fecha_inicio" name="txtFechaInicio" placeholder="" class="input-100" required>
                <div class="row">
                    <p><b>Fecha de termino</b></p>
                </div>
                <input type="date" id="fecha_termino" name="txtFechaTermino" placeholder="" class="input-100" required>
                <br>
                <input type="submit" value="Registrar" class="btn-enviar">
                
            </div>
        </form>
    </body>
</html>