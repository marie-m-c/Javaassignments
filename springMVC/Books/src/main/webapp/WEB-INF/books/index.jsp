<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Read Share</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
  </head>
  <body>
   <div class="container w-50 border p-4 mx-auto mt-5">
   	<h1 class="mb-4 text-primary fw-bold"><c:out value="All Books" /></h1>
    <table class="table">
    	<thead>
    		<tr>
    			<th class="text-secondary bg-light">ID</th>
    			<th class="text-secondary bg-light">Title</th>
    			<th class="text-secondary bg-light">Language</th>
    			<th class="text-secondary bg-light">#Pages</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach var="book" items="${books}">
    			<tr>
    				<td><c:out value="${book.getId()}" /></td>
					<td><a class="text-decoration-none" href="/books/${book.getId()}"><c:out value="${book.getTitle()}" /></a></td>
					<td><c:out value="${book.getLanguage()}" /></td>
					<td><c:out value="${book.getNumberOfPages()}" /></td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table> 
	</div>
	
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>