<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="Formatter.PlanetFormater"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Summary Formatter</title>
</head>
<body>
<button onclick="copyToClipboard('#p1')">Copy TEXT</button>
<h1>Result</h1>
 
<TEXTAREA id="p1" name="report" cols=40 rows=5>>
   <%
   	String inputText = request.getParameter("planetList");
      String stringFromJava = PlanetFormater.runPlanetFormaterr(inputText);
   %>
   <% out.println(stringFromJava); %>
</TEXTAREA>

<form action="index.jsp" method="POST">
	<input type="submit" value="Home" />
</form> 
</body>
</html>