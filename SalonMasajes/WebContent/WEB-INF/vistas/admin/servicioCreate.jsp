<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/vistas/layout/head.jsp" %>

<div class="row">

	<%@ include file="/WEB-INF/vistas/layout/menu_admin.jsp"%>
	<form 
		action="admin/add_servicio" 
		method="post"
		class="col col-sm-6 offset-sm-3 mt-4">
		
		<fieldset>
		
			<legend class="mt-3">Servicio</legend>

			<input type="hidden" id="op" name="op" value="${op}">

			<div class="form-group row">			
				<label for="id" class="col-sm-2 col-form-label">Id</label>				
				<div class="col-sm-10">
					<input 
						type="number" 
						class="form-control" 
						id="id" 
						name="id"
						value="${servicio.id}" 
						readonly
						>
				</div>				
			</div>
			
			<div class="form-group row">			
				<label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
				<div class="col-sm-10">
					<input 
						class="form-control" 
						id="nombre" 
						name="nombre"
						value="${servicio.nombre}"
						>
					<div class="invalid-feedback"></div>
				</div>
			</div>
			
			<div class="form-group row">
				<label for="precio" class="col-sm-2 col-form-label">Precio</label>
				<div class="col-sm-10">
					<input
						class="form-control ${primeravez ? '' : (servicio.errorApellidos == null ? 'is-valid' : 'is-invalid') }" 
						id="precio" 
						name="precio"
						value="${servicio.precio}"
						>
					<div class="invalid-feedback"></div>
				</div>
			</div>
						
			<div class="form-group row">
				<div class="offset-sm-2 col-sm-10">
					<button type="submit" class="btn btn-secondary">Aceptar</button>
				</div>
			</div>
			
		</fieldset>
	</form>
</div>

<%@ include file="/WEB-INF/vistas/layout/footer.jsp" %>