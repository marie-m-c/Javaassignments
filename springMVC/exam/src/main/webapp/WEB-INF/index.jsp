<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Login and Registration</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-75 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<h2 class="fw-bold text-warning my-4 mx-2">Course Platform - Instructors</h2>
    
    <div class="d-flex gap-4">
    	<div class="w-50">
    		<h3 class="m-2 text-success fw-bold">New Instructor</h3>
    		<form:form action="/register" method="post" modelAttribute="newUser" class="form border py-2 px-4">
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="userName">User Name :</form:label>
        			<form:input class="form-control-sm" path="userName"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="userName"/>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="email">Email :</form:label>
        			<form:input class="form-control-sm" path="email"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="email"/>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="password">Password :</form:label>
        			<form:input type="password" class="form-control-sm" path="password"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="password"/>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="confirm">Confirm PW :</form:label>
        			<form:input type="password" class="form-control-sm" path="confirm"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="confirm"/>
    			<br/>
    			<input class="btn btn-primary text-light m-1" type="submit" value="Submit"/>
			</form:form>
		</div>
		<div class="w-50">
    		<h3 class="m-2 text-success fw-bold">Log In</h3>
    		<form:form action="/login" method="post" modelAttribute="newLogin" class="form border py-2 px-4">
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="email">Email :</form:label>
        			<form:input class="form-control-sm" path="email"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="email"/>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-50" path="password">Password :</form:label>
        			<form:input type="password" class="form-control-sm" path="password"/>
    			</div>
    			<form:errors class="ms-2 text-sm text-danger" path="password"/>
    			<br/>
    			<input class="btn btn-primary text-light m-1" type="submit" value="Submit"/>
			</form:form>
		</div>
	</div>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>