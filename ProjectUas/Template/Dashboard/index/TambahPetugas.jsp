<%@page import="OlahData.pegawai"%>
<%@page import="java.util.ArrayList"%>
<%@page import="OlahData.pegawaidatabase"%>



<!DOCTYPE html>
<html>
    <head>
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
                    <h1 class="page-header">Pegawai</h1>
                </div>
            </div><!--/.row-->

            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Tabel Pegawai</div>
                        <div class="panel-body">

                            <form action="OlahAddPegawai.jsp" method="POST">


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>ID * </label> ( <small>diisi sebanyak 4 digit</small> )
                                        <input type="text" class="form-control" placeholder="id" name="id">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Username</label>
                                        <input type="text" class="form-control" placeholder="Username" name="username">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Password</label>
                                        <input type="password" class="form-control" placeholder="password" name="password">
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Peran</label><br>
                                        <select name="peran" class="form-control">
                                            <option value="admin">Admin</option>
                                            <option value="member">Member</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Nama</label>
                                        <input type="text" class="form-control" placeholder="nama" name="nama">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>Alamat</label>
                                        <input type="text" class="form-control" placeholder="alamat" name="alamat">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="col">
                                        <label>No Telepon</label>
                                        <input type="text" class="form-control" placeholder="No Hp" name="no_telp">
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