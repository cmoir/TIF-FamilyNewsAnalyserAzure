<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="Formatter.PlanetFormater"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Summary Formatter</title>
</head>
<body>
 
<h1>Result</h1>
 
<p>
   <%
   	String inputText = request.getParameter("planetList");
      String stringFromJava = PlanetFormater.runPlanetFormaterr(inputText);
   %>
   <% out.println(stringFromJava); %>
</p>
<form action="index.jsp" method="POST">
	<input type="submit" value="Home" />
</form> 
</body>
</html>