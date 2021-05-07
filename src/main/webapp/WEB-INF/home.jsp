<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>Product::</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">
	      Sale of Products
	    </a>
	  </div>
	</nav>
	
	
	<div class="container py-3">
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center mb-5">
        <h1 class="display-4 fw-normal">Seleccion de Opciones</h1>
    </div><br>
    <main>
        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <div class="col" >
                <div class="card mb-4 rounded-3 shadow-sm border-primary">
                    <div class="card-header py-3 text-white bg-primary border-primary">
                        <h1 class="my-0 fw-normal">Ingreso Productos</h1>
                    </div>
                    <form action="/producto" method="POST" class="card-body">
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Para ingresar los</li>
                            <li>datos haga click en </li>
                            <li>ir al formulario</li>
                        </ul>
							<input type="submit" value="Ir al Formulario" class="w-100 btn btn-lg btn-primary">
					</form>
                </div>
            </div>
            
            
            <div class="col" >
                <div class="card mb-4 rounded-3 shadow-sm border-success">
                    <div class="card-header py-3 text-white bg-success border-success">
                        <h1 class="my-0 fw-normal">Ingreso Catagorias</h1>
                    </div>
                    <form action="/categoria" method="POST" class="card-body">
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Para ingresar los</li>
                            <li>datos haga click en </li>
                            <li>ir al formulario</li>
                        </ul>
							<input type="submit" value="Ir al Formulario" class="w-100 btn btn-lg btn-success">
					</form>
                </div>
            </div>
            
            
            <div class="col" >
                <div class="card mb-4 rounded-3 shadow-sm border-warning">
                    <div class="card-header py-3 text-white bg-warning border-warning">
                        <h1 class="my-0 fw-normal">Listado de Productos</h1>
                    </div>
                    <form action="/listar" method="POST" class="card-body">
                        <ul class="list-unstyled mt-3 mb-4">
                            <li>Para ingresar los</li>
                            <li>datos haga click en </li>
                            <li>ir al formulario</li>
                        </ul>
							<input type="submit" value="Ir al Formulario" class="w-100 btn btn-lg btn-warning">
					</form>
                </div>
            </div>
        </div>
    </main>
</div>
	
	
	
	
	<!-- Footer -->
		<footer class="bg-light text-center text-lg-start fixed-bottom">
		  <!-- Copyright -->
		  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
		    © 2020 Copyright:
		    <a class="text-dark" href="https://mdbootstrap.com/">GerardoGallardo</a>
		  </div>
		  <!-- Copyright -->
		</footer>
		<!-- Footer -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>