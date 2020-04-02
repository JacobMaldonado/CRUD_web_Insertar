<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.cabecera{
	font-size: 1.2em;
	font-weight:bold;
	color:#FFFFFF;
	background-color: #08088A;
}

.filas {
	text-align:center;
	background-color: #5882FA;
}

table {
	float:left;
}

#contenedorBoton{
	margin-left:1000px;
}


</style>
</head>

<body>

<table>
<tr class="cabecera">
<td class="cabecera">CODIGO</td>
<td class="cabecera">Seccion</td>
<td class="cabecera">Nombre Articulo</td>
<td class="cabecera">Fecha</td>
<td class="cabecera">Precio</td>
<td class="cabecera">Importado</td>
<td class="cabecera">País de Origen</td>
</tr>
<c:forEach var="tempProd" items="${LISTAPRODUCTOS}">
	<tr>
	<td class="filas">${tempProd.cArt }</td>
	<td class="filas">${tempProd.seccion }</td>
	<td class="filas">${tempProd.nArt }</td>
	<td class="filas">${tempProd.fecha }</td>
	<td class="filas">${tempProd.precio }</td>
	<td class="filas">${tempProd.importado }</td>
	<td class="filas">${tempProd.pOrig }</td>

</tr>
</c:forEach>

</table>

<div id="contenedorBoton">
	<input type="button" value="Insertar Registro" onclick="window.location.href='inserta_producto.jsp'" />
</div>

</body>
</html>