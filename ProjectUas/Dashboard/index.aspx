<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Dashboard.Master" CodeBehind="index.aspx.vb" Inherits="ProjectUas.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Main Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- End menu -->
        <!-- Start search box -->
        <div id="mu-search">
            <div class="mu-search-area">      
                <button class="mu-search-close"><span class="fa fa-close"></span></button>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">            
                            <form class="mu-search-form">
                                <input type="search" placeholder="Masukkan Kata & Tekan Enter">              
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End search box -->
        <!-- Start Slider -->
        <section id="mu-slider">
            <!-- Start single slider item -->
            <div class="mu-slider-single">
                <div class="mu-slider-img">
                    <figure>
                        <img src="https://localhost:44308/Template/Dashboard/assets/img/slider/1.jpg" alt="img">
                    </figure>
                </div>
                <div class="mu-slider-content">
                    <h4>Selamat Datang di Priceless Online Library</h4>
                    <span></span>
                    <h2>Membantu Kalian dalam Belajar</h2>
                    <p>Di sini kalian bisa belajar dengan sumber buku yang terpercaya, yang kami sajikan untuk setiap orang yang datang ke perpustakaan kami.</p>
                    <a href="#" class="mu-read-more-btn">Lebih Lanjut</a>
                </div>
            </div>
            <!-- Start single slider item -->
            <!-- Start single slider item -->
            <div class="mu-slider-single">
                <div class="mu-slider-img">
                    <figure>
                        <img src="https://localhost:44308/Template/Dashboard/assets/img/slider/2.jpg" alt="img">
                    </figure>
                </div>
                <div class="mu-slider-content">
                    <h4>Priceless Library</h4>
                    <span></span>
                    <h2>Tempat Terbaik Untuk Belajar</h2>
                    <p>Di perpustakaan ini buku di kelompokkan ke beberapa kategori, yang memduahkan pembca untuk mencari buku yang di inginkannya.</p>
                    <a href="#" class="mu-read-more-btn">Lebih Lanjut</a>
                </div>
            </div>
            <!-- Start single slider item -->
            <!-- Start single slider item -->
            <div class="mu-slider-single">
                <div class="mu-slider-img">
                    <figure>
                        <img src="https://localhost:44308/Template/Dashboard/assets/img/slider/3.jpg" alt="img">
                    </figure>
                </div>
                <div class="mu-slider-content">
                    <h4>Priceless Library</h4>
                    <span></span>
                    <h2>Pengetahuan Untuk Semua</h2>
                    <p>Perpustakaan di buka untuk umum, pengunjung dari manapun di perbolehkan untuk masuk, selama mengikuti peraturan yang sudah di buat.</p>
                    <a href="#" class="mu-read-more-btn">Lebih Lanjut</a>
                </div>
            </div>
            <!-- Start single slider item -->    
        </section>
        <!-- End Slider -->
        <!-- Start service  -->
        <section id="mu-service">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="mu-service-area">
                            <!-- Start single service -->
                            <div class="mu-service-single">
                                <span class="fa fa-book"></span>
                                <h3>Buku Yang Lengkap</h3>
                                <p>Ketersediaan buku yang cukup lengkap membuat Online Library menjadi salah satu tempat refrensi lengkap.</p>
                            </div>
                            <!-- Start single service -->
                            <!-- Start single service -->
                            <div class="mu-service-single">
                                <span class="fa fa-users"></span>
                                <h3>Pelayanan Ramah</h3>
                                <p>Pelayanan dari karyawan yang ramah, menjadi alasan betah berlama-lama berada di perpustakaan.</p>
                            </div>
                            <!-- Start single service -->
                            <!-- Start single service -->
                            <div class="mu-service-single">
                                <span class="fa fa-table"></span>
                                <h3>Tempat Baca Nyaman</h3>
                                <p>Di sediakan beberapa fitur yang bisa di gunakan oleh pengunjung, seperti kamarmandi dalam, Full AC, LCD TV.</p>
                            </div>
                            <!-- Start single service -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End service  -->

        <!-- Start about us -->
        <section id="mu-about-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mu-about-us-area">           
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="mu-about-us-left">
                                        <!-- Start Title -->
                                        <div class="mu-title">
                                            <h2>Visi Misi</h2>              
                                        </div>
                                        <!-- End Title -->
                                        <p>Visi:</p>
                                        <ol>
                                            <li>Menjadikan Perpustakaan dan Arsip sebagai Pusat Informasi, Pengetahuan, dan Kebudayaan yang Mendukung Visi Priceless Library.</li>
                                        </ol>

                                        <p>Misi:</p>
                                        <ol>
                                            <li>Meningkatkan sarana dan prasaran Perpustakaan dan Kearsipan.</li>
                                            <li>Meningkatkan kualitas Sumber Daya Manusia di bidang Perpustakaan dan Kearsipan.</li>
                                            <li>Menyelamatkan, memelihara, dan mengamankan arsip sebagai sarana informasi utama.</li>
                                            <li>Menarik, memelihara, dan melestarikan karya cetak dan karya rekam hasil budaya bangsa. </li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="mu-about-us-right">                            
                                        <a id="mu-abtus-video">

                                            <source src="https://localhost:44308/Template/Dashboard/assets/video/profil.mp4"  type="video/mp4; codecs=avc1.42E01E, mp4a.40.2">

                                            <img src="https://localhost:44308/Template/Dashboard/assets/img/about-us.jpg" alt="img">
                                        </a>              
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End about us -->

        <!-- Start about us counter -->
        <section id="mu-abtus-counter">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mu-abtus-counter-area">
                            <div class="row">
                                <!-- Start counter item -->
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <div class="mu-abtus-counter-single">
                                        <span class="fa fa-book"></span>
                                        <h4 class="counter">2534</h4>
                                        <p>Buku</p>
                                    </div>
                                 </div>
                                <!-- End counter item -->
                                <!-- Start counter item -->
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <div class="mu-abtus-counter-single">
                                        <span class="fa fa-users"></span>
                                        <h4 class="counter">3500</h4>
                                        <p>User</p>
                                    </div>
                                </div>
                                <!-- End counter item -->
                                <!-- Start counter item -->
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <div class="mu-abtus-counter-single">
                                        <span class="fa fa-flask"></span>
                                        <h4 class="counter">30</h4>
                                        <p>Kursi Baca</p>
                                    </div>
                                </div>
                                <!-- End counter item -->
                                <!-- Start counter item -->
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <div class="mu-abtus-counter-single no-border">
                                        <span class="fa fa-user-secret"></span>
                                        <h4 class="counter">20</h4>
                                        <p>Karyawan</p>
                                    </div>
                                </div>
                                <!-- End counter item -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End about us counter -->

        <!-- Start testimonial -->
        <section id="mu-testimonial">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mu-testimonial-area">
                            <div id="mu-testimonial-slide" class="mu-testimonial-content">

                                <!-- start testimonial single item -->
                                <div class="mu-testimonial-item">
                                    <div class="mu-testimonial-quote">
                                        <blockquote>
                                            <br>
                                            <p>Designer website dan juga membantu dalam pembuatan website. Sebagai FullStack (Backend & Frontend).</p>
                                        </blockquote>
                                    </div>
                                    <div class="mu-testimonial-img">
                                        <img src="https://localhost:44308/Template/Dashboard/assets/img/testimonial-1.png" alt="img">
                                    </div>
                                    <div class="mu-testimonial-info">
                                        <h4>Mei Montyca Manullang</h4>
                                        <span>1855301091</span>
                                    </div>
                                </div>
                                <!-- end testimonial single item -->

                                <!-- start testimonial single item -->
                                <div class="mu-testimonial-item">
                                    <div class="mu-testimonial-quote">
                                        <blockquote>
                                            <br>
                                            <p>Pembuat website, Di project ini sebagai Backend yang membuat Fungsi - fungsi terkai Database dan jalannya Website.</p>
                                        </blockquote>
                                    </div>
                                    <div class="mu-testimonial-img">
                                        <img src="https://localhost:44308/Template/Dashboard/assets/img/testimonial-3.png" alt="img">
                                    </div>
                                    <div class="mu-testimonial-info">
                                        <h4>M. Albar Fikri</h4>
                                        <span>1855301093</span>
                                    </div>
                                </div>
                                <!-- end testimonial single item -->

                                <!-- start testimonial single item -->
                                <div class="mu-testimonial-item">
                                    <div class="mu-testimonial-quote">
                                        <blockquote>
                                            <br>
                                            <p>Di sini sebagai orang yang merancang database dari website ini, dan pengumpul data di lapangan. Dan Juga sesekali membantu pekerjaan Backend.</p>
                                        </blockquote>
                                    </div>
                                    <div class="mu-testimonial-img">
                                        <img src="https://localhost:44308/Template/Dashboard/assets/img/testimonial-2.png" alt="img">
                                    </div>
                                    <div class="mu-testimonial-info">
                                        <h4>Rufina Pramudita</h4>
                                        <span>1855301092</span>
                                    </div>
                                </div>
                                <!-- end testimonial single item -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End testimonial -->
</asp:Content>
