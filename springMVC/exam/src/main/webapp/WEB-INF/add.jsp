<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Create Course</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<div class="d-flex align-items-center justify-content-between py-4">
   		<h2 class="fw-bold text-warning">Create a course</h2>
   	</div>
    <form:form action="/classes/create" method="post" modelAttribute="course" class="form border py-4 px-4">
    	<form:input type="hidden" path="user" value="${userId}" />
    	<form:errors class="ms-2 text-sm text-danger" path="name"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="name">Name :</form:label>
        	<form:input class="form-control" path="name"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="day"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="day">Day Of Week :</form:label>
        	<form:select class="form-control" path="day">
        		<c:forEach var="d" items="${daysOfWeek}">
        			<form:option value="${d}">${d}</form:option>
        		</c:forEach>
        	</form:select>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="price"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="price">Drop-in- Price :</form:label>
        	<form:input class="form-control" path="price"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="time"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="time">Time :</form:label>
        	<form:input type="time" class="form-control" path="time"/>
    	</div>
    	<form:errors class="ms-2 text-sm text-danger" path="description"/>
    	<div class="d-flex align-items-center p-1 m-1">
        	<form:label class="w-50" path="description">Description :</form:label>
        	<form:textarea class="form-control" path="description"></form:textarea>
    	</div>
    	<div class="d-flex align-items-center justify-content-around">
    		<a href="/classes" class="btn btn-warning text-light m-1">Cancel</a>
    		<input class="btn btn-primary text-light m-1" type="submit" value="Submit"/>
    	</div>
	</form:form>
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>