<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>View Course</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   		<h2 class="fw-bold text-warning my-4 mx-2"><c:out value="${course.getName()}" /> with <c:out value="${course.getUser().getUserName()}" /></h2>
   	<div class="d-flex p-2">
			<p class="w-50">Day :</p>
			<p><c:out value="${ course.getAbbrevDay()}"/></p>
		</div>
		<div class="d-flex p-2">
			<p class="w-50">Cost :</p>
			<p>$<c:out value="${ course.getPrice()}"/></p>
		</div>
		<div class="d-flex p-2">
			<p class="w-50">Time :</p>
			<p><c:out value="${ course.getTime()}"/></p>
		</div>
    	<p class="p-2"><c:out value="${ course.getDescription()}"/></p>
    	<hr/>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>