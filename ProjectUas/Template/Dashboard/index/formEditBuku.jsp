<%-- 
    Document   : FormEditBuku
    Created on : Jan 5, 2020, 5:08:45 PM
    Author     : muhammad albar fikri
--%>


<%@page import="OlahData.BukuDatabase"%>
<%@page import="OlahData.Buku"%>
<jsp:useBean id="BukuDatabase" class="OlahData.BukuDatabase"/>
<jsp:useBean id="Buku" class="OlahData.Buku"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    int id = Integer.parseInt(request.getParameter("id"));
    Buku = BukuDatabase.getBukuById(id);
    String gambar = Buku.getGambar();
    String link = Buku.getLink();
    String judul = Buku.getJudulBuku();
    String jenis = Buku.getJenisBuku();
    String bahasa = Buku.getBahasaBuku();
    String tgl = Buku.getTgl();
    String penerbit = Buku.getPenerbit();
    String pengarang = Buku.getPengarang();
    int stok = Buku.getStok();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perpusda | Tables</title>

        <link rel="icon" href="../assets/img/favicon.png" type="image/x-icon">

        <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/datepicker3.css" rel="stylesheet">
        <link href="../assets/css/bootstrap-table.css" rel="stylesheet">
        <link href="../assets/css/styles.css" rel="stylesheet">

        <!--Icons-->
        <script src="../assets/js/lumino.glyphs.js"></script>

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span>Perpusda</span> Admin</a>
                    <ul class="user-menu">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
                                <li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
                                <li><a href="${pageContext.request.contextPath}/login.jsp"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div><!-- /.container-fluid -->
        </nav>

        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <form role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="${pageContext.request.contextPath}/index/indexlog.jsp"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li><a href="${pageContext.request.contextPath}/index/widget.jsp"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Widgets</a></li>
                <li><a href="${pageContext.request.contextPath}/index/tables.jsp"><svg class="glyph stroked male user"><use xlink:href="#stroked-male-user"></use></svg> Anggota</a></li>
                <li><a href="${pageContext.request.contextPath}/index/forms.jsp"><svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Buku</a></li>
                <li><a href="${pageContext.request.contextPath}/index/panels.jsp"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg> Alerts &amp; Panels</a></li>
                <li><a href="${pageContext.request.contextPath}/index/icons.jsp"><svg class="glyph stroked star"><use xlink:href="#stroked-star"></use></svg> Icons</a></li>
                <li class="parent ">
                    <a href="#">
                        <span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Dropdown 
                    </a>
                    <ul class="children collapse" id="sub-item-1">
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 1
                            </a>
                        </li>
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 2
                            </a>
                        </li>
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 3
                            </a>
                        </li>
                    </ul>
                </li>
                <li role="presentation" class="divider"></li>
                <li><a href="${pageContext.request.contextPath}/login.jsp"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Login Page</a></li>
            </ul>

        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Icons</li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Buku</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Tabel Buku</div>
                        <div class="panel-body">

                            <form action="OlahUpdateBuku.jsp" method="POST">
                                <input type="hidden" value="<%=id%>" name="id"> 
                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>ID</label> 
                                        <input type="text" class="form-control" value="<%=id%>" disabled>
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Gambar</label>
                                        <input type="file" class="form-control" value="<%=gambar%>" name="gambar">
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Link</label>
                                        <input type="file" class="form-control" value="<%=link%>" name="link">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Judul Buku</label>
                                        <input type="text" class="form-control" value="<%=judul%>"  name="judul">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Jenis Buku</label><br>

                                        <% if (jenis.equals("komik")) {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Komik</option>
                                            <option value="novel">Novel</option>
                                            <option value="majalah">Majalah</option>
                                            <option value="sains">Sains</option>
                                            <option value="sosial">Sosial</option>
                                            <option value="teknologi">Teknologi</option>
                                        </select>
                                        <%} else if (jenis.equals("novel")) {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Novel</option>
                                            <option value="komik">Komik</option>
                                            <option value="majalah">Majalah</option>
                                            <option value="sains">Sains</option>
                                            <option value="sosial">Sosial</option>
                                            <option value="teknologi">Teknologi</option>
                                        </select>

                                        <%} else if (jenis.equals("majalah")) {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Majalah</option>
                                            <option value="komik">Komik</option>
                                            <option value="majalah">Novel</option>
                                            <option value="sains">Sains</option>
                                            <option value="sosial">Sosial</option>
                                            <option value="teknologi">Teknologi</option>
                                        </select>


                                        <%} else if (jenis.equals("sains")) {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Sains</option>
                                            <option value="komik">Komik</option>
                                            <option value="majalah">Novel</option>
                                            <option value="sains">Majalah</option>
                                            <option value="sosial">Sosial</option>
                                            <option value="teknologi">Teknologi</option>
                                        </select>

                                        <%} else if (jenis.equals("sosial")) {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Sosial</option>
                                            <option value="komik">Komik</option>
                                            <option value="majalah">Novel</option>
                                            <option value="sains">Sains</option>
                                            <option value="sosial">Majalah</option>
                                            <option value="teknologi">Teknologi</option>
                                        </select>


                                        <%} else {
                                        %>
                                        <select name="jenis" class="form-control">
                                            <option value="<%=jenis%>">Teknologi</option>
                                            <option value="komik">Komik</option>
                                            <option value="majalah">Novel</option>
                                            <option value="sains">Sains</option>
                                            <option value="sosial">Sosial</option>
                                            <option value="teknologi">Majalah</option>
                                        </select>
                                        <%}%>
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Bahasa Buku</label>
                                        <% if (bahasa.equals("english")) {
                                        %>
                                        <select name="bahasa" class="form-control">
                                            <option value="<%=bahasa%>">English</option>
                                            <option value="indonesia">Indonesia</option>
                                        </select>


                                        <%} else {
                                        %>
                                        <select name="bahasa" class="form-control">
                                            <option value="<%=bahasa%>">Indonesia</option>
                                            <option value="indonesia">English</option>
                                        </select>
                                        <%}%>
                                    </div>
                                </div>
                                    
                                <div class="form-group col-md-6">
                                    <label>Tanggal</label>
                                    <div class="input-group date" data-provide="datepicker">
                                        <input type="text" class="form-control" placeholder="tanggal terbit" name="tanggal" value="<%=tgl%>">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>   
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Penerbit</label>
                                        <input type="text" class="form-control" placeholder="penerbit" name="penerbit" value="<%=penerbit%>">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Pengarang</label>
                                        <input type="text" class="form-control" placeholder="pengarang" name="pengarang" value="<%=pengarang%>">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Stok</label>
                                        <input type="text" class="form-control" placeholder="stok" name="stok" value="<%=stok%>">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <button type="submit" class="btn btn-primary">Submit Button</button>
                                    <button type="reset" class="btn btn-default">Reset Button</button>
                                </div>
                            </form>  

                        </div>
                    </div>
                </div>
            </div>
            <script>
                $(function () {
                    $('#hover, #striped, #condensed').click(function () {
                        var classes = 'table';

                        if ($('#hover').prop('checked')) {
                            classes += ' table-hover';
                        }
                        if ($('#condensed').prop('checked')) {
                            classes += ' table-condensed';
                        }
                        $('#table-style').bootstrapTable('destroy')
                                .bootstrapTable({
                                    classes: classes,
                                    striped: $('#striped').prop('checked')
                                });
                    });
                });

                function rowStyle(row, index) {
                    var classes = ['active', 'success', 'info', 'warning', 'danger'];

                    if (index % 2 === 0 && index / 2 < classes.length) {
                        return {
                            classes: classes[index / 2]
                        };
                    }
                    return {};
                }
            </script>
        </div>
    </div>
</div>
</div><!--/.row-->




</div><!--/.main-->

<script src="../assets/js/jquery-1.11.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/chart.min.js"></script>
<script src="../assets/js/chart-data.js"></script>
<script src="../assets/js/easypiechart.js"></script>
<script src="../assets/js/easypiechart-data.js"></script>
<script src="../assets/js/bootstrap-datepicker.js"></script>
<script src="../assets/js/bootstrap-table.js"></script>
<script>
                !function ($) {
                    $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                        $(this).find('em:first').toggleClass("glyphicon-minus");
                    });
                    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
                }(window.jQuery);

                $(window).on('resize', function () {
                    if ($(window).width() > 768)
                        $('#sidebar-collapse').collapse('show')
                })
                $(window).on('resize', function () {
                    if ($(window).width() <= 767)
                        $('#sidebar-collapse').collapse('hide')
                })
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const box = document.querySelectorAll("#cari");
        M.Modal.init(box, {});
    });

    document.addEventListener("DOMContentLoaded", function () {
        const box = document.querySelectorAll("#syarat");
        M.Modal.init(box, {});
    });

    document.addEventListener("DOMContentLoaded", function () {
        const box = document.querySelectorAll("select");
        M.FormSelect.init(box, {});
    });

</script>
</body>
</html>

