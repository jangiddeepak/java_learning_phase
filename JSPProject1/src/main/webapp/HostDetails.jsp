<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WELCOME TO MY WEBSITE!!</h1>
<font style="color:red;"> HostName :: <%=request.getRemoteHost() %></font> <br>
<font style="color:red;"> HostId:: <%= session.getId() %> </font>
</body>
</html>