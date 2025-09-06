<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
</head>
<body>
    <h2>Thanks for joining our email list</h2>

    <p><b>First Name:</b> ${firstName}</p>
    <p><b>Last Name:</b> ${lastName}</p>
    <p><b>Email:</b> ${email}</p>
    <p><b>Date of Birth:</b> ${dob}</p>
    <p><b>Heard about us:</b> ${source}</p>

    <p><b>Announcements:</b>
        <c:forEach var="a" items="${announcements}">
            ${a}<br>
        </c:forEach>
    </p>

    <p><b>Contact by:</b> ${contact}</p>
</body>
</html>
