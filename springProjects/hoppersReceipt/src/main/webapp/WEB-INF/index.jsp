<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Simple Receipt</title>
</head>
<body>
	<h1>Receipt</h1>
    <p><strong>Customer Name:</strong> <c:out value="${name}" /></p>
    <p><strong>Item Name:</strong> <c:out value="${itemName}" /></p>
    <p><strong>Price:</strong> <c:out value="${price}" /></p>
    <p><strong>Description:</strong> <c:out value="${description}" /></p>
    <p><strong>Vendor:</strong> <c:out value="${vendor}" /></p>
</body>
</html>