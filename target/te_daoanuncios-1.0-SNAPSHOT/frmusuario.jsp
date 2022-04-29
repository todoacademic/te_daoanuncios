
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Usuario"%>

<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <br>
        <div class="container">
            <center><h3>NUEVO REGISTRO</h3></center>
            <form action="UsuarioController" method="post">
                <input type="hidden" name="id" value="${usuario.id}" />

                <div class="form-group">
                    <label>Nombre</label>
                    <input type="text" name="nombre" value="${usuario.nombre}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Correo</label>
                    <input type="text" name="correo" value="${usuario.correo}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Clave</label>
                    <input type="text" name="clave" value="${usuario.clave}" class="form-control"/>
                </div><br>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Enviar"/>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
