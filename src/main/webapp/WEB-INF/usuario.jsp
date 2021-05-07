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
	
	<div class="container col-md-4">
		<h1 style="text-align: center;" class="mt-5">Registro de Usuarios</h1>
		<br>
		<form action="/usuario/insertar" method="POST" class="px-2">
		
			<div class="form-group mb-3">
				<label for="rut">Rut</label> <input type="text" class="form-control" id="rut" name="rut">
			</div>

			<div class="form-group">
				<label for="nombre">Nombre</label> <input type="text" class="form-control" id="nombre" name="nombre">
				<br>
			</div>

			<div class="form-group mb-3">
				<label for="apellido">Apellido</label> <input type="text" class="form-control" id="apellido" name="apellido">
			</div>
			
			<div class="form-group mb-3">
				<label for="email">Email</label> <input type="text" class="form-control" id="email" name="email">
			</div>
			
			<div class="form-group mb-3">
				<label for="password">Password</label> <input type="text" class="form-control" id="password" name="password">
			</div>


			<div class="container mt-5">
				<div class="row">
					<div class="btn-group" role="group" aria-label="Basic mixed styles example">
                		<button type="Submit"  class="btn btn-success">Agregar</button>
               		 	<a href="/" class="btn btn-warning">Volver</a>	
            		</div>
				</div>
			</div>
			<br>

		</form>
	</div>
	 
		<div class="container col-md-6 mt-5">
			<h1 style="text-align: center;" class="mt-5">Usuarios Existentes</h1>
			<table class="table text-center table-striped table-sm mt-5">
				  <thead>
				    <tr class="table-dark">
				      <th scope="col">#</th>
				      <th scope="col">Rut</th>
				      <th scope="col">Nombre</th>
				      <th scope="col">Apellido</th>
				      <th scope="col">Email</th>
				      <th scope="col">Acción</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var = "usuario" items="${listaUsuarios}">
				    <tr>
				      <th scope="row"><c:out value="${usuario.id}"></c:out></th>
				      <td><c:out value="${usuario.rut}"></c:out></td>
				      <td><c:out value="${usuario.nombre}"></c:out></td>
				      <td><c:out value="${usuario.apellido}"></c:out></td>
				      <td><c:out value="${usuario.email}"></c:out></td>
					  <td>
					  <div class="btn-group" role="group" aria-label="Basic mixed styles example">
				      		<a href="/usuario/editar/${usuario.id}" class="btn btn-warning">Editar</a>
	                		<a href="/usuario/eliminar/${usuario.id}" class="btn btn-danger">Eliminar</a>	
	            	  </div>
					  </td>
				    </tr>
				    </c:forEach>
				  </tbody>
			</table>
		</div> 
	
	
	
	
	<!-- Footer -->
		<footer class="bg-light text-center text-lg-start footer mt-5">
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