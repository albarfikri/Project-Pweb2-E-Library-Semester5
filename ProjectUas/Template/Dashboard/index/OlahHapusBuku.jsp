<%-- 
    Document   : OlahHapusBuku
    Created on : Jan 5, 2020, 4:43:23 PM
    Author     : muhammad albar fikri
--%>

<%@page import="OlahData.BukuDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            BukuDatabase database = new BukuDatabase();

                if (database.delete(id) == true) {%>
        <jsp:forward page="forms.jsp"/>


        <%} else {%>
        <jsp:forward page="../error.jsp"/>


        <%}%>
    </body>
</html>
