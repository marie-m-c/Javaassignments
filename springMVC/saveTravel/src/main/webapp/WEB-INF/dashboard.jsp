<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Save Travel</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<h2 class="my-4 text-primary"><c:out value="Save Travels" /></h2>
    <table class="table">
    	<thead>
    		<tr>
    			<th class="text-light bg-secondary">Expense</th>
    			<th class="text-light bg-secondary">Vendor</th>
    			<th class="text-light bg-secondary">Amount</th>
    			<th class="text-light bg-secondary">Actions</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach var="expense" items="${expenses}">
    			<tr>
    				<td><a class="text-decoration-none" href="/expenses/${expense.getId()}"><c:out value="${expense.getName()}" /></a></td>
					<td><c:out value="${expense.getVendor()}" /></td>
					<td>$<c:out value="${expense.getAmount()}" /></td>
					<td class="d-flex justify-content-around p-1">
						<a class="text-decoration-none" href="/expenses/edit/${expense.getId()}"><c:out value="edit" /></a>
						<form action="/expenses/delete/${expense.getId()}" method="post">
							<input type="hidden" name="_method" value="delete" />
							<input class="btn btn-danger btn-sm text-light" type="submit" value="delete"/>
						</form>
					</td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
    <h3 class="my-3 text-primary"><c:out value="Add an expense" /></h3>
    <form:form action="/expense/create" method="post" modelAttribute="expense" class="form border py-2 px-4">
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