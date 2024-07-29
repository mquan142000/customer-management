<%--
  Created by IntelliJ IDEA.
  User: minhquan
  Date: 29/07/2024
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="customer?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>

    <c:forEach items="${customers}" var="customer">
        <tr>
            <td><a href="customers?action=view&id=${customer.id}"><c:out value="${customer.getName()}" /></a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="customers?action=edit&id=${customer.rrid}">Edit</a></td>
            <td><a href="customers?action=delete&id=${customer.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
