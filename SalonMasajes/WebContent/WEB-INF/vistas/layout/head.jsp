<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<title>masajistas.com</title>
	
	<base href="${pageContext.request.contextPath}/" />
	
	<!-- Bootstrap 4 -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<!-- DataTables con aspecto Bootstrap 4 -->
	<link rel="stylesheet" href="css/dataTables.bootstrap4.min.css" />
	<!-- Font Awesome -->
	<link rel="stylesheet" href="css/all.min.css" />
	
	<link rel="stylesheet" href="css/index.css" />
	
	<!-- jQuery -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- DataTables -->
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap4.min.js"></script>
	
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/d4a3f3b590.js"	crossorigin="anonymous"></script>
	<!-- Google Font (Neucha) -->
	<link href="https://fonts.googleapis.com/css?family=Dosis:300&display=swap" rel="stylesheet"> 

	<script>
		$(document).ready(function() {
			$('.table').DataTable({
	            "language": {
	                "url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
	            }
	        } );
		});
	</script>
</head>
<body>

	<!-- Navegador -->
	<nav class="nav-menu navbar navbar-expand-lg sticky-top">
		<a class="navbar-brand" href="vistas/index.jsp"><img id="logo" src="img/logo.png" alt="logo"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"><i class="burger fas fa-align-justify"></i></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item sm-ml-5"><a class="nav-link" href="vistas/index.jsp"><i class="fas fa-home"></i> Inicio</a></li>
					<li class="nav-item sm-ml-3"><a class="nav-link" href="admin/index"><i class="fas fa-tools"></i> Panel de Administración</a></li>
				</ul>
				
				<c:choose>
					<c:when test="${sessionScope.email != null}">
						<span class="navbar-text ml-3"> ${sessionScope.email} </span>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="logout"> Salir  <i class="fas fa-user"> </i></a>
							</li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="login">Inicia Sesión <i class="fas fa-user-times">
							</i></a>
							</li>
						</ul>
					</c:otherwise>
				</c:choose>
		</div>
	</nav>

	<!-- Alerta -->
	<c:if test="${alertatexto != null}">
	
		<div class="alert alert-${alertanivel} alert-dismissible fade show"
			role="alert">
			${alertatexto}
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

		<%
			session.removeAttribute("alertatexto");
				session.removeAttribute("alertanivel");
		%>
	</c:if>
	<main class="container-fluid mb-5 pb-5">