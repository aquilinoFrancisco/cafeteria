<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</br>
<h3>
	<center>
		<spring:message code="label.seleccion5" />
	</center>
</h3>
</br>
<centre> <form:form method="post" class="form3" action="viewAdmin.html">

	<div class="form-row">
		<div class="form-group col-md-5">
			<label for="usuario"><spring:message code="label.seguridad" /></label>
			<input type="text" class="form-control" id="codigoseguridad"
				name="codigoseguridad" maxlength="3"
				placeholder="<spring:message code="label.seguridad1"/>">
			<form:errors path="codigoseguridad" cssClass="error" />
		</div>

		<div class="form-group col-md-5">
			<label for="contraseña"><spring:message code="label.password" /></label>
			<input type="text" class="form-control" id="codigoseguridad"
				name="codigoseguridad" maxlength="3"
				placeholder="<spring:message code="label.password1"/>">
			<form:errors path="codigoseguridad" cssClass="error" />
		</div>

	</div>
	<centre>
		<div class="form-group text-center">
			<input type="button" name="cancelar"
				value="<spring:message code="label.cancelar"/>"
				onclick="self.location.href = 'home.html'"
				onkeypress="self.location.href = 'home.html'"
				class="btn btn-lg btn-dark" role="button" /> 
			<input type="submit"
				name="continuar" value="<spring:message code="label.continuar"/>"
				class="btn btn-lg btn-success" role="button" />
		</div>
	</centre>
</form:form> </centre>