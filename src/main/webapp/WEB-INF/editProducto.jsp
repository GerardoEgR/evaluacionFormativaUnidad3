<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

<div class="container col-md-4 mb-5">
		<h1 style="text-align: center;" class="mt-5">Editar Producto</h1>
		<br>
		<form:form action="/producto/update" method="POST" class="px-2" modelAttribute="producto">
			<form:hidden path="id"/>
			<div class="form-group">
				<form:label path="nombre">Producto</form:label> <form:input class="form-control" path="nombre"/>
				<br>
			</div>
			
			<div class="form-group mb-3">
				<form:label path="precio">Precio Producto</form:label> <form:input class="form-control" path="precio"/>
			</div>

			<div class="form-group mb-3">
				<form:label path="descripcion">Descripción Producto</form:label> <form:input class="form-control" path="descripcion"/>
			</div>


			<div class="container mt-5">
				<div class="row">
					<div class="btn-group" role="group" aria-label="Basic mixed styles example">
                		<button type="Submit"  class="btn btn-success">Actualizar</button>
               		 
            		</div>
				</div>
			</div>
			<br>

		</form:form>
		<br>
	</div>
	
	<!-- Footer -->
		<footer class="bg-light text-center text-lg-start footer fixed-bottom">
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