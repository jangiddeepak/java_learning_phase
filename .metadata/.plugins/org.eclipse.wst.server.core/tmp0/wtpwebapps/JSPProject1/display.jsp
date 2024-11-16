<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#4d565c;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 600px;
        }
        
        .employee-details {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        
        .employee-details th,
        .employee-details td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        .employee-details th {
            background-color: #007bff;
            color: white;
        }
        
        .employee-details tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Details</h2>
        <table class="employee-details">
            <tr>
                <th>Emp_name</th>
                <th>Emp_Id</th>
                <th>Emp_Email</th>
                <th>Dept_no</th>
                <th>Emp_ph_no</th>
                <th>Emp_Address</th>
            </tr>
            <%
            try {
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Suthar@@1234");
                Statement stm = conn.createStatement();
                ResultSet r = stm.executeQuery("select * from employee_details1"); 
                while(r.next()) {
                    %>
                    <tr>
                        <td><%= r.getString(1) %></td>
                        <td><%= r.getInt(2) %></td>
                        <td><%= r.getString(3) %></td>
                        <td><%= r.getInt(4) %></td>
                        <td><%= r.getInt(5) %></td>
                        <td><%= r.getString(6) %></td>
                    </tr>
                    <%
                }
                conn.close();
            } catch(Exception e) {
                out.println(e);
            }
            %>
        </table>
    </div>
</body>
</html>
