<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema CRUD</title>
        <link href="https://bootswatch.com/4/cosmo/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/8719a7912f.js" crossorigin="anonymous"></script>
    </head>  
    <body>
    <style>
        .bg-spring{
            background: #00b359;
        }
    </style>
    <nav class="navbar navbar-dark bg-spring">
        <a class="navbar-brand font-weight-bold" href="#">SISTEMA CRUD - SPRING <i class="fas fa-seedling"></i></a>
    </nav>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <a class="btn btn-dark btn-block" href="agregar.htm">Nuevo Registro</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="table-responsive">
                    <table class="table table-hover table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>NOMBRE</th>
                                <th>CORREO</th>
                                <th>NACIONALIDAD</th>
                                <th>ACCIONES</t<h>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.listaPersonas}" var="lista">
                                    <tr>
                                        <td>${lista.ID}</td>
                                        <td>${lista.NOMBRE}</td>
                                        <td>${lista.CORREO}</td>
                                        <td>${lista.NACIONALIDAD}</td>
                                        <td>
                                            <a class="btn btn-warning btn-sm text-white">
                                                <i class="fas fa-pen"></i>
                                            </a>
                                            <a class="btn btn-danger btn-sm text-white">
                                                <i class="fas fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>                                
                            </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
