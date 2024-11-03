<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>New Dojo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #f2f2f2 0%, #d9d9d9 50%, #bfbfbf 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<h2 class="my-4 text-primary">New Dojo</h2>
    <form:form action="/dojo/create" method="post" modelAttribute="newDojo" class="form border py-2 px-4 mb-3">
    	
        	<form:label class="w-50" path="name">Name :</form:label>
        	<form:input class="form-control-sm w-50" path="name"/>
        	<form:errors class="ms-2 text-sm text-danger" path="name"/>
    	
    	<input class="btn btn-primary btn-sm text-light m-1" type="submit" value="Create"/>
	</form:form>
	
	<c:forEach var="dojo" items="${dojos}">
		<li>
			<a class="text-decoration-none" href="/dojos/${dojo.getId()}"><c:out value="${dojo.getName()}" /></a>
		</li>
    </c:forEach>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>