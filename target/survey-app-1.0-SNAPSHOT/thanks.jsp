<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        h1 { color: teal; }
        .info { margin-top: 20px; }
        .info p { margin: 5px 0; }
    </style>
</head>
<body>

<h1>Thank You for Your Submission!</h1>

<div class="info">
    <p><strong>First Name:</strong> ${fname}</p>
    <p><strong>Last Name:</strong> ${lname}</p>
    <p><strong>Email:</strong> ${email}</p>
    <p><strong>Date of Birth:</strong> ${dob}</p>
    <p><strong>Heard about us:</strong> ${source}</p>
    <p><strong>Announcements:</strong>
        <c:if test="${not empty offers}">
            <c:forEach var="o" items="${offers}">${o}<br/></c:forEach>
        </c:if>
        <c:if test="${not empty emailoffers}">
            ${emailoffers}
        </c:if>
    </p>
    <p><strong>Preferred Contact:</strong> ${contact}</p>
</div>

</body>
</html>
