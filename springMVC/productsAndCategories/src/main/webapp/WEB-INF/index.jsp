<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Home</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   		<h2 class="fw-bold text-primary text-center py-4">Home page</h2>
   		
   		<div class="py-4">
   			<ul class="list-group list-unstyled">
   				<li><a href="/products/new">New Product</a></li>
   				<li><a href="/categories/new">New Category</a></li>
   			</ul>
   		</div>
   		
   		<table class="table table-bordered">
   			<thead>
   				<tr class="text-center">
   					<th class="text-light bg-secondary">Products</th>
   					<th class="text-light bg-secondary">Categories</th>
   				</tr>
   			</thead>
   			<tbody>
   				<tr>
   					<td>
   					<ul class="list-group px-4">
   						<c:forEach var="product" items="${products}">
   							<li>
   								<a href="/products/${product.getId()}"><c:out value="${product.getName()}" /></a>
   							</li>
   						</c:forEach>
   					</ul>
   					</td>
   					<td>
   						<ul class="list-group px-4">
   							<c:forEach var="category" items="${categories}">
   								<li>
   									<a href="/categories/${category.getId()}"><c:out value="${category.getName()}" /></a>
   								</li>
   						</c:forEach>
   						</ul>
   					</td>
   				</tr>
   			</tbody>
   		</table>
   
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>