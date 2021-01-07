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


        <jsp:include page="menu.html"/>
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
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/a.jpeg" width="370" height="220"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/1.jpg" alt="img-1" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Test Test berhasil !!</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div>                  
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/sbmptn.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/buku/a.jpg" alt="img-2" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/unexpected.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/buku/unexpected.jpg" alt="img-3" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/biologi.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/4.jpg" alt="img-4" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/algoritma.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/5.jpg" alt="img-5" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/kalkulus.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/6.jpg" alt="img-6" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/toefl.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/7.jpg" alt="img-7" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/attitude.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/8.jpg" alt="img-8" />
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
                                        <!-- start single gallery image -->
                                        <li class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="mu-single-gallery">                  
                                                <div class="mu-single-gallery-item">
                                                    <div class="mu-single-gallery-img">
                                                        <a href="#"><img alt="img" src="https://localhost:44308/Template/Dashboard/assets/img/buku/sejarah.jpg"></a>
                                                    </div>
                                                    <div class="mu-single-gallery-info">
                                                        <div class="mu-single-gallery-info-inner">
                                                            <h4>Image Title</h4>
                                                            <p>Web Design</p>
                                                            <a href="#" class="mu-view-btn"><span class="fa fa-search"></span></a>
                                                            <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                                                            <!-- Iteam detail view -->
                                                            <div class="portfolio-detail">
                                                                <a href="#" class="modal-close-btn"><span class="fa fa-times"></span></a>
                                                                <img src="https://localhost:44308/Template/Dashboard/assets/img/gallery/big/9.jpg" alt="img-9"/>
                                                                <h2>Gallery Item Title</h2>
                                                                <p>	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                                <a href="#" class="view-project-btn">Live Demo</a>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </div>
                                        </li>
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
