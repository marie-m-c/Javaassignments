<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Read Share</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
  </head>
  <body style="font-family: 'Roboto';background-image: linear-gradient(120deg, #e1e6eb 0%, #c4c9d1 50%, #a8afb5 100%);">
   <div class="container w-50 border p-4 mx-auto" style="background-color: rgba(255, 255, 255, 0.2); min-height: 100vh;">
   	<div class="d-flex justify-content-between align-items-center py-4">
   		<h2 class="fw-bold text-warning"><c:out value="${book.getTitle()}" />!</h2>
   		<a href="/books">back to the shelves</a>
   	</div>
   	<p class="py-2 text-lg">
   		<c:if test="${book.getUser().getId() == userId }">
   			<span class="text-danger">You</span>
   		</c:if>
   		<c:if test="${book.getUser().getId() != userId }">
   			<span class="text-danger"><c:out value="${book.getUser().getUserName()}" /></span>
   		</c:if>
   		read <span style="color: purple;"><c:out value="${book.getTitle() }" /></span> by <span class="text-success"><c:out value="${book.getAuthor() }" /></span>.
   	</p>
   	<p class="py-2 text-lg">Here are <c:out value="${book.getUser().getUserName() }" />'s thoughts :</p>
    <div class="py-2 px-4 mx-4"> </div>
 		<hr/>
 		<p><c:out value="${book.getThoughts() }" /></p>
 		<hr>
 		<c:if test="${book.getUser().getId() == userId }">
 			<div class="m-2 d-flex gap-2 justify-content-center align-items-center">
 				<form action="/books/${book.getId()}/edit" method="post">
 					<input type="submit" class="btn btn-warning text-light" value="edit" />
 				</form>
 				<form action="/books/${book.getId()}/delete" method="post">
 					<input type="hidden" name="_method" value="delete" />
 					<input type="submit" class="btn btn-danger" value="delete" />
 				</form>
 			</div>
 		</c:if>
	</div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>