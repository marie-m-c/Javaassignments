<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
  </head>
  <body>
    <h2 class="w-25 mx-auto my-4 text-center">Here's Your Omikuji!</h2>

    <p class="w-25 mx-auto my-4 text-center p-2 border border-dark bg-info">
      <c:out value="${omikujiMessage}" />
    </p>

    <div class="w-25 mx-auto my-2 text-center">
      <a href="/omikuji">Go Back</a>
    </div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
