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
	<div class="container col-md-3">
		<div class="row mb-5  mt-5">
		<form  class="form-signin text-center mt-5 ">
		      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		      <input type="email" id="inputEmail" class="form-control mt-2" placeholder="Email address" required autofocus>
		      <input type="password" id="inputPassword" class="form-control mt-2" placeholder="Password" required>
		      
		      <a href="/home" class="btn btn-lg btn-primary btn-block mt-5 col-md-12" type="Submit" >Sign in</a><br>
		      <a href="/usuario" class="btn btn-lg btn-primary btn-block mt-2 col-md-12" type="Submit" >Create Account</a>

		      <p class="mt-5 mb-3 text-muted">&copy; Gerardo Gallardo - 2021</p>
		 </form>
		 </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>