<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<H1 style="text-align: center;">Insertar Registros</H1>

<form name="form1" method="get" action="ControladorProductos">
<input type="hidden" name="instruccion" value="insertarBBDD"/>
<table style="width: 400px;">

 <tbody>
 
  <tr>
   <td>C&Oacute;DIGOART&Iacute;CULO</td>
   <td><input name="CArt" maxlength="4" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>SECCI&Oacute;N</td>
   <td><input name="seccion" maxlength="11" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>NOMBREART&Iacute;CULO</td>
   <td><input name="NArt" maxlength="24" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>PRECIO</td>
   <td><input name="precio" maxlength="10" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>FECHA</td>
   <td><input name="fecha" maxlength="10" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>IMPORTADO</td>
   <td><input name="importado" maxlength="9" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td>PA&Iacute;SDEORIGEN</td>
   <td><input name="POrig" maxlength="9" size="24" type="text" /></td>
  </tr>
 
  <tr>
   <td><input type="submit" value="Enviar" /></td>
   <td><input type="button" value="Restablecer" /></td>
  </tr>
  
 </tbody>
 
</table>

</form>

</body>
</html>