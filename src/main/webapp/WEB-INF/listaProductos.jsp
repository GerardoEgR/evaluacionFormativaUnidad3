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
	
	
		<div class="container col-md-6 mt-5">
			<h1 style="text-align: center;" class="mt-5 mb-5">Listado de  Productos</h1>
			
			<table class="table text-center table-striped table-sm">
				  <thead>
				    <tr class="table-dark">
				      <th scope="col">Codigpo</th>
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
				      <td><c:out value="${producto.precio}"></c:out></td>
				      <td><c:out value="${producto.descripcion}"></c:out></td>
					  <td>
					  <div class="btn-group" role="group" aria-label="Basic mixed styles example">
				      		<a href="/listar/carrito/${producto.id}" class="btn btn-warning">Agregar</a>
	            	  </div>
					  </td>
				    </tr>
				    </c:forEach>
				  </tbody>
			</table>
		</div>
		
	
		<!-- 
		<div class="container col-md-6 mt-5">
			<h1 style="text-align: center;" class="mt-5 mb-5">Listado del Carrito</h1>
			
			<table class="table text-center table-striped table-sm">
				  <thead>
				    <tr class="table-dark">
				      <th scope="col">Codigo</th>
				      <th scope="col">Nombre</th>
				      <th scope="col">Precio</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var = "producto" items="${productos}">
				    <tr>
				    	<th scope="row"><c:out value="${producto.id}"></c:out></th>
				      <td><c:out value="${producto.nombre}"></c:out></td>
				      <td><c:out value="${productos.precio}"></c:out></td>
				    </tr>
				    
				    </c:forEach>
				  </tbody>
				  <tr>
				  
				      <th scope="col">Total</th>
				      <th scope="col"></th>
				      <!-- <th scope="col"><c:out value="total += ${producto.precio}"></c:out></th>

				  </tr>
			</table>
		</div> -->
	
	
	
	
	<!-- Footer -->
		<footer class="bg-light text-center text-lg-start footer pt-5">
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