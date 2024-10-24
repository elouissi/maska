<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Liste des utilisateurs</h1>

    <!-- Formulaire d'ajout d'utilisateur -->
    <form action="${pageContext.request.contextPath}/save" method="post" class="mb-3">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" required>
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" required>
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" id="email" name="email" required>

        </div>
        <button type="submit" class="btn btn-primary">Ajouter Utilisateur</button>
    </form>

    <!-- Liste des utilisateurs -->
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom d'utilisateur</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/edit/${user.id}" class="btn btn-warning">Éditer</a>
                    <a href="${pageContext.request.contextPath}/delete/${user.id}" class="btn btn-danger"
                       onclick="return confirm('Voulez-vous vraiment supprimer cet utilisateur ?')">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
