<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
 	<head>
    	<meta charset="ISO-8859-1" />
    	<title>Show Expense</title>
    	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    </head>
	<body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
		<div class="container w-50 p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   			<div class="d-flex justify-content-between align-items-center my-5">
				<h2 class="text-secondary">Expense Details</h2>
				<a href="/expenses" class="text-decoration-none text-light h5">Go back</a>
			</div>
			<div class="d-flex p-2">
				<p class="w-50">Expense Name :</p>
				<p><c:out value="${ expense.getName()}"/></p>
			</div>
			<div class="d-flex p-2">
				<p class="w-50">Expense Description :</p>
				<p><c:out value="${ expense.getDescription()}"/></p>
			</div>
			<div class="d-flex p-2">
				<p class="w-50">Vendor :</p>
				<p><c:out value="${ expense.getVendor()}"/></p>
			</div>
			<div class="d-flex p-2">
				<p class="w-50">Amount Spent :</p>
				<p><c:out value="${ expense.getAmount()}"/></p>
			</div>
		</div>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>