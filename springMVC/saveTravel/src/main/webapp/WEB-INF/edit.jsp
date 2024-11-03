<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
 	<head>
    	<meta charset="ISO-8859-1" />
    	<title>Edit Expense</title>
    	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    </head>
	<body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
		<div class="container w-50 p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   			<div class="d-flex justify-content-between align-items-center my-5">
				<h2 class="text-secondary">Edit Expense</h2>
				<a href="/expenses" class="text-decoration-none text-light h5">Go back</a>
			</div>
			<form:form action="/expenses/edit/${expense.getId()}" method="post" modelAttribute="expense" class="form border py-2 px-4">
				<input type="hidden" name="_method" value="put" />
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="name">Expense Name :</form:label>
        			<form:input class="form-control-sm w-25" path="name"/>
        			<form:errors class="ms-2 text-sm text-danger" path="name"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="vendor">Vendor :</form:label>
        			<form:input class="form-control-sm w-25" path="vendor"/>
        			<form:errors class="ms-2 text-sm text-danger" path="vendor"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="amount">Amount :</form:label>
        			<form:input class="form-control-sm w-25" path="amount"/>
        			<form:errors class="ms-2 text-sm text-danger" path="amount"/>
    			</div>
    			<div class="d-flex p-1 m-1">
        			<form:label class="w-25" path="description">Description :</form:label>     
        			<form:textarea class="form-control-sm w-25" path="description"/>
        			<form:errors class="ms-2 text-sm text-danger" path="description"/>
    			</div>
    			<input class="btn btn-primary text-light m-1" type="submit" value="Submit"/>
			</form:form>
		</div>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>