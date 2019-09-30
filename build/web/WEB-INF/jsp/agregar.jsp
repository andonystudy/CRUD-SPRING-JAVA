<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
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
                <div class="col-md-4 m-auto">
                    <div class="card">
                        <div class="card-body">
                            <form method="POST">
                                <div class="form-group">
                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="correo" class="form-control" placeholder="Correo">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="nacionalidad" class="form-control" placeholder="Nacionalidad">
                                </div>
                                <input type="submit" class="btn btn-dark btn-block" value="Agregar">
                                <a href="index.htm" class="btn btn-info btn-block">Regresar</a>
                            </form>
                        </div>
                    </div>
                </div>
                <!--
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
                -->                        
            </div>
        </div>
    </body>
</html>
