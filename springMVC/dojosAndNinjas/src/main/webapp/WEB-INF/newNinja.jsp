<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
 	<head>
    	<meta charset="ISO-8859-1" />
    	<title>New Ninja</title>
    	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    </head>
	<body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
		<div class="container w-50 p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
			<h2 class="text-secondary my-5">New Ninja</h2>
			<form:form action="/ninja/create" method="post" modelAttribute="ninja" class="form border py-2 px-4">
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="dojo">Dojo :</form:label>
        			<form:select class="form-control-sm w-25" path="dojo">
        				<c:forEach var="dojo" items="${dojos}">
        					<option value="${dojo.getId()}"><c:out value="${dojo.getName()}" /></option>
        				</c:forEach>
        			</form:select>
        			<form:errors class="ms-2 text-sm text-danger" path="dojo"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="firstName">First Name :</form:label>
        			<form:input class="form-control-sm w-25" path="firstName"/>
        			<form:errors class="ms-2 text-sm text-danger" path="firstName"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="lastName">Last Name :</form:label>
        			<form:input class="form-control-sm w-25" path="lastName"/>
        			<form:errors class="ms-2 text-sm text-danger" path="lastName"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="age">Age :</form:label>     
        			<form:input type="number" class="form-control-sm w-25" path="age"/>
        			<form:errors class="ms-2 text-sm text-danger" path="age"/>
    			</div>
    			<input class="btn btn-primary text-light m-1" type="submit" value="Create"/>
			</form:form>
		</div>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>