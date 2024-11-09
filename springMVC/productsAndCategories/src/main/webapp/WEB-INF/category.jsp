<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Category Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   		<h2 class="fw-bold text-primary text-center py-4"><c:out value="${category.getName()}" /></h2>
   	
   	<a href="/">Home</a>
   	<div class="py-4">
   		<hr/>
   			<ul class="list-group px-4">
   				<c:forEach var="product" items="${products}">
        			<c:if test="${category.getProducts().contains(product)}">
   						<li><c:out value="${product.getName()}" /></li>
   					</c:if>
   				</c:forEach>
   			</ul>
   		<hr/>
   	</div>
    <form action="/categories/${category.getId()}/addProduct" method="post" class="form border p-4 my-2">
    	<div class="d-flex flex-column p-1 m-1">
        	<label class="w-50">Add Product :</label>
        	<select class="form-select" name="productId">
        		<c:forEach var="product" items="${products}">
        			<c:if test="${!category.getProducts().contains(product)}">
        				<option value="${product.getId()}"><c:out value="${product.getName()}" /></option>
        			</c:if>
        		</c:forEach>
        	</select>
    	</div>
    	<br/><input class="btn btn-primary text-light m-1 w-100" type="submit" value="Add"/>
	</form>
    
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>