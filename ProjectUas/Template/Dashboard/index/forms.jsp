<%@page import="OlahData.pegawai"%>
<%@page import="OlahData.Buku"%>
<%@page import="java.util.ArrayList"%>
<%@page import="OlahData.BukuDatabase"%>
<% pegawai login = (pegawai) session.getAttribute("pegawai");
    String peran = login.getPeran();
    String username = login.getUsername();%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Perpusda | Tables</title>

        <link rel="icon" href="../assets/img/favicon.png" type="image/x-icon">

        <link href="http://localhost:8080/Perpustakaan-master/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://localhost:8080/Perpustakaan-master/assets/css/datepicker3.css" rel="stylesheet">
        <link href="http://localhost:8080/Perpustakaan-master/assets/css/bootstrap-table.css" rel="stylesheet">
        <link href="http://localhost:8080/Perpustakaan-master/assets/css/styles.css" rel="stylesheet">

        <!--Icons-->
        <script src="http://localhost:8080/Perpustakaan-master/assets/js/lumino.glyphs.js"></script>

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

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
                    <a class="navbar-brand" href="#"><span>Perpusda</span> Member</a>
                    <ul class="user-menu">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Welcome ! <%=username%>  <span class="caret"></span></a>
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
                <li class="active"><a href="${pageContext.request.contextPath}/index/forms.jsp"><svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></use></svg> Buku</a></li>
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
                    <h1 class="page-header">Book Shelves</h1>
                </div>
            </div><!--/.row-->

            <%
                ArrayList<Buku> list = BukuDatabase.selectAll();
            %>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Tabel Buku</div>
                        <div class="panel-body">
                            <button onclick="window.location.href = 'TambahBuku.jsp';" class="btn btn-info btn-rounded" data-target="cari">
                                <span class="glyphicon glyphicon-plus" aria-hidden="true"> Tambah</span>
                            </button>
                            <table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
                                <thead>

                                    <tr>
                                        <th data-field="state">No</th>
                                        <th data-field="id">ID</th>
                                        <th data-field="gambar">Gambar</th>
                                        <th data-field="judul_buku">Judul Buku</th>
                                        <th data-field="peran">Jenis Buku</th>
                                        <th data-field="nama">Bahasa Buku</th>
                                        <th data-field="alamat">Tanggal terbit</th>
                                        <th data-field="no_telp">Penerbit</th>
                                        <th data-field="pengarang">Pengarang</th>
                                        <th data-field="stok">Stok</th>
                                        <th data-field="aksi">Aksi</th>
                                    </tr>
                                </thead>
                                <%
                                    for (int i = 0; i < list.size(); i++) {
                                        list.get(i);

                                %>
                                <tr>
                                    <td><%=i + 1%></td>
                                    <td><%= list.get(i).getIdBuku()%></td>
                                    <td>
                                        <img src="http://localhost:8080/Perpustakaan-master/assets/img/buku/<%= list.get(i).getGambar()%>" width="230"
                                             height="320">
                                    </td>
                                    <td><%= list.get(i).getJudulBuku()%></td>
                                    <td><%= list.get(i).getJenisBuku()%></td>
                                    <td><%= list.get(i).getBahasaBuku()%></td>
                                    <td><%= list.get(i).getTgl()%></td>
                                    <td><%= list.get(i).getPenerbit()%></td>
                                    <td><%= list.get(i).getPengarang()%></td>
                                    <td><%= list.get(i).getStok()%></td>
                                    <td>
                                        <button onclick="window.location.href = 'RincianBuku.jsp?id=<%= list.get(i).getIdBuku()%>';" type="button" class="btn btn-primary">
                                            <span aria-hidden="true" class="glyphicon glyphicon-edit"></span>
                                        </button>
                                        <button onclick="window.location.href = 'OlahHapusBuku.jsp?id=<%= list.get(i).getIdBuku()%>';" type="button" class="btn btn-danger">
                                            <span aria-hidden="true"class="glyphicon glyphicon-trash"></span>

                                        </button>
                                        <button onclick="window.location.href = 'http://localhost:8080/Perpustakaan-master/assets/img/bukufile/<%= list.get(i).getLink()%>';" type="button" class="btn btn-home">
                                            <span aria-hidden="true"class="glyphicon glyphicon-eye-open"></span>

                                        </button>

                                    </td>

                                </tr>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div><!--/.row-->	
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">Basic Table</div>
                        <div class="panel-body">
                            <table data-toggle="table" data-url="tables/data2.json" >
                                <thead>
                                    <tr>
                                        <th data-field="id" data-align="right">Item ID</th>
                                        <th data-field="name">Item Name</th>
                                        <th data-field="price">Item Price</th>

                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">Styled Table</div>
                        <div class="panel-body">
                            <table data-toggle="table" id="table-style" data-url="tables/data2.json" data-row-style="rowStyle">
                                <thead>
                                    <tr>
                                        <th data-field="id" data-align="right" >Item ID</th>
                                        <th data-field="name" >Item Name</th>
                                        <th data-field="price" >Item Price</th>
                                    </tr>
                                </thead>
                            </table>
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
    </body>

</html>