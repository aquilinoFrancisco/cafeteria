<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<center>
	<h2><spring:message code="label.titulo" /></h2>

	<table>
		<tr>
			<td><label>Id</label></td>
			<td><label>Nombre</label></td>
			<td><label>Disponible</label></td>
			<td><label>Precio</label></td>
			<td><label>Accion</label></td>
		</tr>
		<c:forEach items="${productos}" var="producto">
		<tr>
			<td>${producto.idProducto}</td>
			<td>${producto.nombreProducto}</td>
			<td>${producto.cantidadDisponible}</td>
			<td>${producto.precioUnitarioProducto}</td>
			<td><a href="viewUpdateProducto.html?id=${producto.idProducto}"><spring:message code="label.update" /></a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteProducto.html?id=${producto.idProducto}"><spring:message code="label.delete" /></a></td>
		</tr>
		</c:forEach>
	</table>
	
</center>
<form:form method="post" action="viewAddProducto.html" modelAttribute="producto" claa = "form3">

		<tr>
			<td colspan="2">
				<center>
					<br> <input type="submit" value="<spring:message code="label.titulo1" />" />
				</center>
			</td>
		</tr>
	</table>
</form:form>

