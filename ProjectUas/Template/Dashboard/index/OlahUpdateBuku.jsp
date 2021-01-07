<%-- 
    Document   : OlahUpdateBuku
    Created on : Jan 5, 2020, 8:51:47 PM
    Author     : muhammad albar fikri
--%>

<%@page import="OlahData.BukuDatabase"%>
<%@page import="OlahData.Buku"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String gambar = request.getParameter("gambar");
            String link = request.getParameter("link");
            String judul = request.getParameter("judul");
            String jenis = request.getParameter("jenis");
            String bahasa = request.getParameter("bahasa");
            String tgl = request.getParameter("tanggal");
            String penerbit = request.getParameter("penerbit");
            String pengarang = request.getParameter("pengarang");
            int stok = Integer.parseInt(request.getParameter("stok"));

            Buku buku = new Buku();
            buku.setIdBuku(id);
            buku.setGambar(gambar);
            buku.setLink(link);
            buku.setJudulBuku(judul);
            buku.setJenisBuku(jenis);
            buku.setBahasaBuku(bahasa);
            buku.setTgl(tgl);
            buku.setPenerbit(penerbit);
            buku.setPengarang(pengarang);
            buku.setStok(stok);

            BukuDatabase bukudb = new BukuDatabase();
            request.setAttribute("buku", buku);
            if (bukudb.store(buku) == true) {
        %>
        <jsp:forward page="forms.jsp"/>
        <%} else {
        %>
        <jsp:forward page="error.jsp"/>
        <%}%>
    </body>
</html>
