<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.io.*,java.util.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practical 6 PRELAB</title>
</head>
<body>
<h2>Current Date & Time</h2*>
<%
Date date=new Date();
out.println("<h3 text-align:center>"+date.toString()+"</h3>");
%>
</body>
</html>