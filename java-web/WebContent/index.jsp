ESTUDIANTE: KELVIN PAUL PUCHO ZEVALLOS

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%--Esto es una directiva para utilizar la clase Date --%>
	<%@ page import="java.util.Date"  %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ecodeup</title>
</head>
<body>
	Bienvenido a ecodeup, el blog de Java y Java Web
	<br>
	
	<% out.println(); %>
	<%out.print("Hola mundo desde JSP"); %>
		<br>
	
	<%="Esto es una expresión" %>
	<br>
	
	<%
	Date d = new Date();
	out.println("Fecha Actual: "+d);
	%>
		<br>
	<%-- Declaraciones en JSP --%>
	<%! public static int contador=7; %>
	<%  out.println("Valor de la variable contador: "+contador);%>
	<br>
	
	<% out.print(request.getHeader("USER-AGENT")); %>
	
</body>
</html>
