<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey - Thanks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h1 {
            color: teal;
        }
        .info {
            margin-top: 20px;
        }
        label {
            font-weight: bold;
            display: inline-block;
            width: 150px;
        }
    </style>
</head>
<body>

    <img src="images/murachlogo.png" alt="Murach Logo">

    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <div class="info">
        <p><label>First Name:</label> <%= request.getParameter("fname") %></p>
        <p><label>Last Name:</label> <%= request.getParameter("lname") %></p>
        <p><label>Email:</label> <%= request.getParameter("email") %></p>
        <p><label>Date of Birth:</label> <%= request.getParameter("dob") %></p>
        <p><label>Heard about us:</label> <%= request.getParameter("source") %></p>
        <p><label>Announcements:</label>
            <%
                String[] offers = request.getParameterValues("offers");
                String[] emailOffers = request.getParameterValues("emailoffers");
                if (offers != null || emailOffers != null) {
                    if (offers != null) {
                        for (String s : offers) { out.print(s + "<br>"); }
                    }
                    if (emailOffers != null) {
                        for (String s : emailOffers) { out.print(s + "<br>"); }
                    }
                } else {
                    out.print("No");
                }
            %>
        </p>
        <p><label>Contact by:</label> <%= request.getParameter("contact") %></p>
    </div>

    <form action="index.html" method="get">
        <input type="submit" value="Return">
    </form>

    <footer style="margin-top: 30px;">
        &copy; 2025 Mike Murach & Associates
    </footer>

</body>
</html>
