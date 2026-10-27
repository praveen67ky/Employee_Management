<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>


<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
    }

    table {
        border-collapse: collapse;
        width: 50%;
        margin-top: 15px;
    }

    th, td {
        border: 1px solid black;
        padding: 6px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    .error {
        color: red;
    }

    input {
        padding: 5px;
    }

    button {
        padding: 6px 12px;
        cursor: pointer;
    }
</style>


</head>

<body>

<h2>Employee Management</h2>

<c:if test="${not empty error}">
    <p class="error">
        <c:out value="${error}" />
    </p>
</c:if>

<form action="${pageContext.request.contextPath}/employees"
      method="post">

    Name:
    <input type="text" name="name" required>
    <br><br>

    Department:
    <input type="text" name="department" required>
    <br><br>

    <button type="submit">Add Employee</button>

</form>

<h3>Employees</h3>

<table>
    <tr>
        <th>Name</th>
        <th>Department</th>
    </tr>

    <c:forEach var="e" items="${employees}">
        <tr>
            <td><c:out value="${e.name}" /></td>
            <td><c:out value="${e.department}" /></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
