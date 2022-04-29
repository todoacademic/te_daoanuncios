<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Usuario"%>

<%
    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
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
            <center><h3>LISTADO DE USUARIOS</h3></center>
            
            <p><a class="btn btn-success" href="UsuarioController?action=add">Nuevo</a></p>
            
            <table class="table table-striped table-hover" >
               
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Clave</th>
                    <th></th>
                    <th></th>
                </tr>
            
                
                <c:forEach var="item" items="${usuarios}">
        
                    <tr>
                        <th>${item.id}</th>
                        <td>${item.nombre}</td>
                        <td>${item.correo}</td>
                        <td>${item.clave}</td>
                        <td><a class="btn btn-warning" href="UsuarioController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="btn btn-danger" href="UsuarioController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>  
     
                </c:forEach>
            </table>
           <p><a class="btn btn-info" href="index.jsp">Volver al inicio</a></p>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
