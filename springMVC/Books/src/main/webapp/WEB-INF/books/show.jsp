<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Reading Books</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
  </head>
  <body>
   <div class="container w-50 border p-4 mx-auto mt-5">
    <h1 class="mb-4 text-primary fw-bold"><c:out value="${book.getTitle()}" /></h1>
        <p><strong>Description:</strong> <c:out value="${book.getDescription()}" /></p>
        <p><strong>Language:</strong> <c:out value="${book.getLanguage()}" /></p>
        <p><strong>Number of Pages:</strong> <c:out value="${book.getNumberOfPages()}" /></p>
	</div>
	
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>