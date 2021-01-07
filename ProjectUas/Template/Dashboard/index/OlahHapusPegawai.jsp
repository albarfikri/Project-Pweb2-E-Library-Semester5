<%-- 
    Document   : OlahHapusPegawai
    Created on : Jan 4, 2020, 8:20:02 PM
    Author     : muhammad albar fikri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="OlahData.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pesan = null;
            int id = Integer.parseInt(request.getParameter("id"));
            pegawaidatabase database = new pegawaidatabase();

        if (database.delete(id) == true) {%>
        <jsp:forward page="tables.jsp"/>


        <%} else {%>
        <jsp:forward page="../error.jsp"/>


        <%}%>
    </body>
</html>
