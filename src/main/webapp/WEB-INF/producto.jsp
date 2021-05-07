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
	
	<div class="container col-md-4 mb-5">
		<h1 style="text-align: center;" class="mt-5">Ingreso de Productos</h1>
		<br>
		<form action="/producto/insertar" method="POST" class="px-2">

			<div class="form-group">
				<label for="nombre">Producto</label> <input type="text" class="form-control" id="nombre" name="nombre">
				<br>
			</div>
			
			<div class="form-group mb-3">
				<label for="precio">Precio</label> <input type="text" class="form-control" id="precio" name="precio">
			</div>

			<div class="form-group mb-3">
				<label for="descripcion">Descripción</label> <input type="text" class="form-control" id="descripcion" name="descripcion">
			</div>
			<select class="form-select mt-3" aria-label="Default select example" name="categoria">
				  <option value="0" selected>Selecion una categoria</option>
				  <c:forEach var="categ" items="${listaCategorias}">
				  <option value="<c:out value="${categ.id}"></c:out>"><c:out value="${categ.nombre}"></c:out></option>
				  </c:forEach>
			</select>
		
			<div class="container mt-5  mb-5">
				<div class="row">
					<div class="btn-group" role="group" aria-label="Basic mixed styles example">
                		<button type="Submit"  class="btn btn-success">Agregar</button>
               		 	<a href="/home" class="btn btn-warning">Volver</a>	
            		</div>
				</div>
			</div>
			
		</form>
		<br>
	</div>
	
		<div class="container col-md-6 mt-5">
			<table class="table text-center table-striped table-sm">
				  <thead>
				    <tr class="table-dark">
				      <th scope="col">#</th>
				      <th scope="col">Nombre</th>
				      <th scope="col">Precio</th>
				      <th scope="col">Descripción</th>
				      <th scope="col">Acción</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var = "producto" items="${listaProductos}">
				    <tr>
				      <th scope="row"><c:out value="${producto.id}"></c:out></th>
				      <td><c:out value="${producto.nombre}"></c:out></td>
				      <td><c:out value="${producto.descripcion}"></c:out></td>
				      <td><c:out value="${producto.precio}"></c:out></td>
					  <td>
					  <div class="btn-group" role="group" aria-label="Basic mixed styles example">
				      		<a href="/producto/editar/${producto.id}" class="btn btn-warning">Editar</a>
	                		<a href="/producto/eliminar/${producto.id}" class="btn btn-danger">Eliminar</a>	
	            	  </div>
					  </td>
				    </tr>
				    </c:forEach>
				  </tbody>
			</table>
		</div>
	
	
	
	
	<!-- Footer -->
		<footer class="bg-light text-center text-lg-start footer">
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