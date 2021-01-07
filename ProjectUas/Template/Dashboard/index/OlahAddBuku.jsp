<%-- 
    Document   : OlahAddBuku
    Created on : Jan 5, 2020, 4:43:06 PM
    Author     : muhammad albar fikri
--%>

<%@page import="OlahData.Buku"%>
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
           
        
          
            Buku book = new Buku();
            book.setIdBuku(id);
            book.setGambar(gambar);
            book.setLink(link);
            book.setJudulBuku(judul);
            book.setJenisBuku(jenis);
            book.setBahasaBuku(bahasa);
            book.setTgl(tgl);
            book.setPenerbit(penerbit);
            book.setPengarang(pengarang);
            book.setStok(stok);

            BukuDatabase bukudb = new BukuDatabase();
            request.setAttribute("buku", bukudb);
            if (bukudb.create(book) == true) {
        %>

        <jsp:forward page="forms.jsp"/>
        <%} else {
        %>
        <jsp:forward page="error.jsp"/>
        <%}%>

    </body>
</html>
