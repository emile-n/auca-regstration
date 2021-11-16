<%-- 
    Document   : register
    Created on : 31 Oct 2021, 09:37:31
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>AUCA REGISTRATION</h1>
        <form action="process-registration.jsp" method="GET">
            ID
            <input name="id" />
            <br />
            First Name
            <input name="fname" />
            <br />
            Last Name
            <input name="lname" />
            <br />
            <input type="submit" value="Register" />
        </form>
    </body>
</html>
