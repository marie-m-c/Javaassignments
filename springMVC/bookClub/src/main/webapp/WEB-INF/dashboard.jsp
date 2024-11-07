<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Read Share</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<div class="d-flex justify-content-between align-items-center py-4">
   		<h2 class="fw-bold text-warning">Welcome, <c:out value="${userName}" />!</h2>
   		<a href="/logout">Logout</a>
   	</div>
   	<div class="d-flex justify-content-between align-items-center py-4">
   		<p>Books from everyone's shelves</p>
   		<a href="/books/new">Add to my shelf!</a>
   	</div>
    
 	<table class="table">
    		<thead>
    			<tr>
    				<th class="text-light bg-secondary">Id</th>
    				<th class="text-light bg-secondary">Title</th>
    				<th class="text-light bg-secondary">Author Name</th>
    				<th class="text-light bg-secondary">Posted By</th>
    			</tr>
    		</thead>
    		<tbody>
    		<c:forEach var="book" items="${books}">
    			<tr>
    				<td><c:out value="${book.getId()}" /></td>
    				<td><a class="text-decoration-none" href="/books/${book.getId()}"><c:out value="${book.getTitle()}" /></a></td>
					<td><c:out value="${book.getAuthor()}" /></td>
					<td><c:out value="${book.getUser().getUserName()}" /></td>
    			</tr>
    		</c:forEach>
    		</tbody>
    	</table>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>