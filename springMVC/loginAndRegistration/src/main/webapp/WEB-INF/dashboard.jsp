<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Login & Registration</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-75 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<h2 class="fw-bold text-warning my-4 mx-2">Welcome, <c:out value="${userName}" />!</h2>
   	<p>This is you dashboard. Nothing to see here yet</p>
   	<a href="/logout">Logout</a>
    
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>