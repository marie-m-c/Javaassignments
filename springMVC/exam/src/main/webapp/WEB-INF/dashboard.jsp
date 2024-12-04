<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-75 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<div class="d-flex justify-content-between align-items-center my-4 mx-2">
   		<h2 class="fw-bold text-warning">Namaste, <c:out value="${userName}" />!</h2>
   		<a href="/logout">Logout</a>
   	</div>
   	<p class="my-4">Course Schedule</p>
   	<table class="table">
    		<thead>
    			<tr>
    				<th class="text-light bg-secondary">Class Name</th>
    				<th class="text-light bg-secondary">Instructor</th>
    				<th class="text-light bg-secondary">Weekday</th>
    				<th class="text-light bg-secondary">Price</th>
					<th class="text-light bg-secondary">Time</th>
    			</tr>
    		</thead>
    		<tbody>
    		<c:forEach var="course" items="${courses}">
    			<tr>
    				<td class="d-flex gap-3 align-items-center">
    					<a class="text-decoration-none" href="/classes/${course.getId()}"><c:out value="${course.getName()}" /></a>
    					<c:if test="${course.getUser().getId() == userId }">
 							<form action="/classes/${course.getId()}/edit" method="post">
 								<input type="submit" class="btn btn-warning text-light" value="edit" />
 							</form>
 						</c:if>
    				</td>
					<td><c:out value="${course.getUser().getUserName()}" /></td>
					<td><c:out value="${course.getDay()}" /></td>
					<td><c:out value="${course.getPrice()}" /></td>
					<td><c:out value="${course.getTime()}" /></td>
    			</tr>
    		</c:forEach>
    		</tbody>
    	</table>
    <a href="/classes/new" class="btn btn-primary my-2">+ new course</a>
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>