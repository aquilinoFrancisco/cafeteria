<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<center>
	<h2>
		<spring:message code="label.titulo" />
	</h2>
</center>

<form:form method="post" action="saveProducto.html"
	modelAttribute="nuevoProducto" claa="form3">

	<input type="hidden" name="idProducto" value="${producto.idProducto}" />

	<div class="form-group">
		<label for="nombreProducto"><spring:message
				code="label.nombreProd" /></label> <input type="text" class="form-control"
			id="nombreProducto" name="nombreProducto"
			placeholder="<spring:message code="label.nombreProd"/>"
			value="${nuevoProducto.nombreProducto}" />
	</div>

	<div class="form-group">
		<label for="cantidadDisponible"><spring:message
				code="label.cantDisponible" /></label>
		<textarea class="form-control" id="cantidadDisponible"
			name="cantidadDisponible" rows="2"
			value="${producto.cantidadDisponible}"
			placeholder="<spring:message code="label.cantDisponible"/>"></textarea>
		<form:errors path="cantidadDisponible" cssClass="error" />
	</div>

	<div class="form-group">
		<label for="precioUnitarioProducto"><spring:message
				code="label.precioUnitario" /></label>
		<textarea class="form-control" id="precioUnitarioProducto"
			name="precioUnitarioProducto" rows="2"
			value="${producto.precioUnitarioProducto}"
			placeholder="<spring:message code="label.precioUnitario"/>"></textarea>
		<form:errors path="precioUnitarioProducto" cssClass="error" />
	</div>

	<div class="form-group">
		<label for="estatus"><spring:message code="label.estatus" /></label>
		<textarea class="form-control" id="estatus" name="estatus" rows="2"
			value="${producto.estatus}"
			placeholder="<spring:message code="label.estatus"/>"></textarea>
		<form:errors path="estatus" cssClass="error" />
	</div>
	<centre>
	<div class="form-group text-center">
		<input type="button" name="cancelar"
			value="<spring:message code="label.cancelar"/>"
			onclick="self.location.href = 'viewAdmin.html'"
			onkeypress="self.location.href = 'home.html'"
			class="btn btn-lg btn-dark" role="button" /> <input type="submit"
			name="continuar" value="<spring:message code="label.continuar"/>"
			class="btn btn-lg btn-success" role="button" />
	</div>
	</centre>

</form:form>

</center>