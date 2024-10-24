<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Éditer l'utilisateur</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <h1>Éditer l'utilisateur</h1>

  <form action="${pageContext.request.contextPath}/update/${user.id}" method="post">
    <div class="mb-3">

      <label for="firstName" class="form-label">First Name</label>
      <input type="text" class="form-control" id="firstName"value="${user.firstName}" name="firstName" required>
      <label for="lastName" class="form-label">Last Name</label>
      <input type="text" class="form-control" id="lastName"value="${user.lastName}" name="lastName" required>
      <label for="email" class="form-label">Email</label>
      <input type="text" class="form-control" id="email"value="${user.email}" name="email" required>
    </div>
    <button type="submit" class="btn btn-primary">Mettre à jour</button>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
