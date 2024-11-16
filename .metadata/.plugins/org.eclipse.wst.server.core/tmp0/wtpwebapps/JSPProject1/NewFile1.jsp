<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
</style>
<body bgcolor="lightblue">
<%
 
try{
	Class.forName("com.mysql.jdbc.Driver"); 
}
catch(Exception e)
{
	out.println(e);
}
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Suthar@@1234");
	Statement stmt=con.createStatement();
	//ResultSet rs=stmt.executeQuery("select * from employee"); 
	 //while(rs.next())  
	//{
	//out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
	//out.println("<br></br>");
	//}
	 String q=request.getParameter("que");
	 
	 
	 stmt.executeUpdate(q);
	 out.println("<center>"+"Done Your Query "+"</center>");
	 out.println("<center>"+"If you want to check the database click here "+"</center>");
	 out.println("<br>");
	 out.println("<center>"+  "<a href="+"display.jsp"+">GO</a>" +"</center>");
}

catch(Exception e)
{
out.print(e);
}
%>
 
 
</body>
</html>