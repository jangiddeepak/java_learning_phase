<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: lightyellow;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        
        .success-message {
            color: green;
            font-size: 24px;
            margin-bottom: 10px;
        }
        
        .failure-message {
            color: red;
            font-size: 18px;
            margin-bottom: 10px;
        }
        
        .query-link {
            font-size: 18px;
            text-decoration: none;
            color: #007bff;
        }
        
        .query-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <%
        String s1 = request.getParameter("username");
        String s2 = request.getParameter("userid");
        String s3 = request.getParameter("password");
        
        if (s1.equals("abc") && s2.equals("abc123") && s3.equals("abc@123")) {
            %>
            <div class="success-message">
                Login Done
            </div>
            <p>CLICK HERE TO EXECUTE QUERY</p>
            <a class="query-link" href="form.html">GO</a>
            <%
        } else {
            %>
            <div class="failure-message">
                Please enter correct details
            </div>
            <%
        }
        %>
    </div>
</body>
</html>
