<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="OlahData.pegawai"%>
<%@page import="OlahData.pegawaidatabase"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String peran = request.getParameter("peran");
            String nama = request.getParameter("nama");
            String alamat = request.getParameter("alamat");
            String no = request.getParameter("no_telp");

            pegawai pegawai = new pegawai();
            pegawai.setIdPetugas(id);
            pegawai.setUsername(username);
            pegawai.setPassword(password);
            pegawai.setPeran(peran);
            pegawai.setNama(nama);
            pegawai.setAlamat(alamat);
            pegawai.setNo(no);

            pegawaidatabase pegawaidb = new pegawaidatabase();

            if (pegawaidb.store(pegawai) == true) {
        %>

        <jsp:forward page="tables.jsp"/>
        <%} else {
        %>
        <jsp:forward page="charts.jsp"/>
        <%}%>




    </body>
</html>