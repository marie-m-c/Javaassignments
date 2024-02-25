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
    <div class="container mt-1 mx-auto w-50">
      <h2 class="text-center text-info fw-bold my-2">Send an Omikuji!</h2>
      <form
        class="form border py-2 px-4"
        action="/create_message"
        method="post"
      >
        <div>
          <label for="number">Pick any number from 5 to 25</label><br />
          <input class="form-control-sm" type="number" name="number" />
        </div>

        <div>
          <label for="">Enter the name of any city</label><br />
          <input class="form-control" type="text" name="city" />
        </div>
        <div>
          <label for="">Enter the name of any real person</label><br />
          <input class="form-control" type="text" name="person" />
        </div>

        <div>
          <label for="">Enter professional endeavor or hobby</label><br />
          <input class="form-control" type="text" name="hobby" />
        </div>

        <div>
          <label for="">Enter any type of living thing</label><br />
          <input class="form-control" type="text" name="livingThing" />
        </div>
        <div>
          <label for="">Say something nice to someone:</label><br />
          <textarea
            class="form-control"
            name="message"
            cols="20"
            rows="5"
          ></textarea>
        </div>
        <p>Send and show a friend!</p>
        <input class="btn btn-primary" type="submit" value="Send" />
      </form>
    </div>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
