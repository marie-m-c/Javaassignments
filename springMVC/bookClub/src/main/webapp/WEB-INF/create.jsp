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
   	<div class="d-flex align-items-center justify-content-between py-4">
   		<h2 class="fw-bold text-warning">Add a Book to Your Shelf!</h2>
   		<a href="/books">Back to the shelves</a>
   	</div>
    <form:form action="/books/create" method="post" modelAttribute="book" class="form border py-4 px-4">
    	<form:input type="hidden" path="user" value="${userId}" />
    	<form:errors class="ms-2 text-sm text-danger" path="title"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="title">Title :</form:label>
        	<form:input class="form-control" path="title"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="author"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="author">Author :</form:label>
        	<form:input class="form-control" path="author"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="thoughts"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="thoughts">Thoughts :</form:label>
        	<form:textarea class="form-control" path="thoughts"/>
    	</div>
    	<br/><input class="btn btn-primary text-light m-1" type="submit" value="Submit"/>
	</form:form>
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>