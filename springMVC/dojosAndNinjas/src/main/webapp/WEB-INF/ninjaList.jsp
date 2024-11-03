<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Dojo Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<h2 class="my-4 text-primary"><c:out value="${dojo.getName()}" /> Location Ninjas</h2>
    <table class="table">
    	<thead>
    		<tr>
    			<th class="text-light bg-secondary">First Name</th>
    			<th class="text-light bg-secondary">Last Name</th>
    			<th class="text-light bg-secondary">Age</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach var="ninja" items="${dojo.getNinjas()}">
    			<tr>
    				<td><c:out value="${ninja.getFirstName()}" /></td>
					<td><c:out value="${ninja.getLastName()}" /></td>
					<td><c:out value="${ninja.getAge()}" /></td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>