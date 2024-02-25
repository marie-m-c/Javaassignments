<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Fruity</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="container mt-4 mx-auto w-50">
        <h2 class="my-4 text-primary">Fruit Store</h2>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>
             <tbody>
                <!-- Iterate over the fruits and display each item -->
                <c:forEach var="fruit" items="${fruits}">
                    <tr>
                        <td>${fruit.name}</td>
                        <td>${fruit.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>