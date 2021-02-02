<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Dashboard.Master" CodeBehind="gallery.aspx.vb" Inherits="ProjectUas.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Gallery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- END SCROLL TOP BUTTON -->


    <jsp:include page="menu.html" />
    <!-- End header  -->

    <!-- Start search box -->
    <div id="mu-search">
        <div class="mu-search-area">
            <button class="mu-search-close"><span class="fa fa-close"></span></button>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form class="mu-search-form">
                            <input type="search" placeholder="Type Your Keyword(s) & Hit Enter">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End search box -->
    <!-- Page breadcrumb -->
    <section id="mu-page-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-page-breadcrumb-area">
                        <h2>Gallery</h2>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End breadcrumb -->
    <!-- Start gallery  -->
    <section id="mu-gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-gallery-area">
                        <!-- start title -->
                        <div class="mu-title">
                            <h2>Koleksi Buku</h2>
                            <p>last update 24 hours</p>
                        </div>
                        <!-- end title -->
                        <!-- start gallery content -->
                        <div class="mu-gallery-content">
                            <div class="mu-gallery-body">
                                <ul class="row">



                                    <asp:Repeater ID="Beranda" runat="server">
                                        <HeaderTemplate></HeaderTemplate>
                                        <ItemTemplate>
                                            <!-- start single gallery image -->
                                            <li class="col-md-4 col-sm-6 col-xs-12">
                                                <div class="mu-single-gallery">
                                                    <div class="mu-single-gallery-item">
                                                        <div class="mu-single-gallery-img">
                                                            <a href="#">
                                                                <img alt="img" src="../Assets/Img/<%# Eval("gambar") %>" width="370" height="220"></a>
                                                        </div>
                                                        <div class="mu-single-gallery-info">
                                                            <div class="mu-single-gallery-info-inner">
                                                                <h4><%# Eval("judul_buku") %></h4>
                                                                <p><%# Eval("kategori") %></p>
                                                                <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                                <%--<a href="#" class="aa-link"><span class="fa fa-link"></span></a>--%>
                                                                <!-- Iteam detail view -->
                                                                <div class="portfolio-detail">
                                                                    <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                    <div class="utf_dashboard_list_box margin-bottom-25">
                                                                        <img alt="img" src="../Assets/Img/<%# Eval("gambar") %>" width="290" height="420"></a>
                                                                        <h4>Deskripsi Koleksi <span class="pull-right"></span></h4>
                                                                        <div class="dashboard-list-box table-responsive invoices with-icons" style="padding: 5px">
                                                                            <table class="table table-hover table-striped table-condensed">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>Nama Buku</td>
                                                                                        <td><%# Eval("judul_buku") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Kategori</td>
                                                                                        <td><%# Eval("kategori") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="200">Nama Pengarang</td>
                                                                                        <td><%# Eval("nama_pengarang") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Stok</td>
                                                                                        <td><b><%# Eval("stok") %></b></td>
                                                                                    </tr>                                                          
                                                                                    <tr>
                                                                                        <td>~
                                                                                        </td>
                                                                                        <td>~</td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                            Sinopsis
                                                                              <p><%# Eval("sinopsis") %></p>
                                                                         
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>



                                </ul>
                            </div>
                        </div>
                        <!-- end gallery content -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End gallery  -->



</asp:Content>
