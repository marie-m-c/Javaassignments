<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>New Product</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   		<h2 class="fw-bold text-primary text-center py-4">New Product</h2>
   	
   	<a href="/">Home</a>
    <form:form action="/products/create" method="post" modelAttribute="product" class="form border p-4 my-2">
    	<form:errors class="ms-2 text-sm text-danger" path="name"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="name">Name :</form:label>
        	<form:input class="form-control" path="name"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="description"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="description">Description :</form:label>
        	<form:input class="form-control" path="description"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="price"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="price">Price :</form:label>
        	<form:input class="form-control" path="price"/>
    	</div>
    	<br/><input class="btn btn-primary text-light m-1 w-100" type="submit" value="Submit"/>
	</form:form>
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>