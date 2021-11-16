<%-- 
    Document   : newjspprocess-registration
    Created on : 31 Oct 2021, 10:05:20
    Author     : USER
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String firstName = request.getParameter("fname");
    String surname = request.getParameter("lname");
    out.print(id + "<br />");
    out.print(firstName + "<br />");
    out.print(surname + "<br />");
    try {    
        //register driver
        DriverManager.registerDriver(new org.postgresql.Driver());
        //get database connection
        String url = "jdbc:postgresql://localhost:5433/WebDB";
        String username = "postgres";
        String password = "1234";
        Connection con = DriverManager.getConnection(url, username, password);

        //run queries
        String query = "INSERT INTO students (id, first_name, last_name) VALUES (?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, id);
        pst.setString(2, firstName);
        pst.setString(3, surname);
        pst.execute();
        out.print("SUCCESS");
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AUCA</title>
    </head>
    <body>
        <h1>Process Registration</h1>
    </body>
</html>
