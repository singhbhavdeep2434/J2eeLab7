<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://bhavdeep.com/custom-tags" prefix="custom" %>
<!DOCTYPE html>

<html>
<head>
    <title>Inventory List</title>
</head>
<body>
    <h1>Inventory List</h1>
    <h2>Current Date and Time:</h2>
    <fmt:formatDate value="${currentTime}" pattern="MMMM d, yyyy, h:mm a" />
    <h2>Products:</h2>

    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.quantity}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>

    <custom:copyright />
</body>
</html>
