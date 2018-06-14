<%@page import="com.sun.jndi.toolkit.url.Uri"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Horarios</title>
    
    <style type="text/css">
    </style>
	 <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet"> 
    <!--[if IE]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body background="images/light_blue1.jpg">
    <div class="col-md-12">
				</div><a href="index.html"><img src="images/logo.png"/></a><br /><br />
				<table>
  <tr bgcolor="#FFFFFF">
    <th>Carrera</th>
    <th>Materia</th>
    <th>Comisión</th>
    <th>Profesor</th>
    <th>Horario</th>
    <th>Aula</th>
    <th>Sede</th>
    </tr>
     <c:forEach items="${datos}" var="datos">
  <tr class="${datos.cancelada}">
    <td>${datos.carrera}</td>
    <td>${datos.materia}</td>
    <td>${datos.comision}</td>
    <td>${datos.profesor}</td>
    <td>${datos.horario}&nbsp;HS</td>
    <td>${datos.aula}</td>
    <td>${datos.sede}</td>
  </tr>
   </c:forEach>
</table>
<FONT FACE="Impact" color="#FDFEFE" size="5">
<MARQUEE BGCOLOR="#000000"><c:out value="${info}"></c:out></MARQUEE>
</FONT><br>
<FONT FACE="Impact" color="red"><h1><strong>ATENCIÓN: En color ROJO se ven las clases suspendidas!!!</strong></h1></FONT>
      </div>
	   <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>