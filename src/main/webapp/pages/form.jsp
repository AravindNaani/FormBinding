<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Form</title>
</head>
<body>
    <h1>Product Form</h1>

    <!-- Display message if product is submitted -->
    <c:if test="${not empty message}">
        <p style="color: green;">${message}</p>
    </c:if>

    <!-- Form to submit product details -->
    <form:form modelAttribute="product" method="POST" action="/product">
        <table>
            <tr>
                <td><label for="productId">Product ID:</label></td>
                <td><form:input path="productId" id="productId" type="number" /></td>
            </tr>
            <tr>
                <td><label for="productName">Product Name:</label></td>
                <td><form:input path="productName" id="productName" type="text" /></td>
            </tr>
            <tr>
                <td><label for="productPrice">Product Price:</label></td>
                <td><form:input path="productPrice" id="productPrice" type="number" step="0.01" /></td>
            </tr>
        </table>

        <div>
            <button type="submit">Submit</button>
        </div>
    </form:form>

    <!-- Error display -->
    <form:errors path="*" cssClass="error" />

</body>
</html>
