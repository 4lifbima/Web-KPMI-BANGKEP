<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>KPMI-BANGKEP | Keluarga Pelajar Mahasiswa Indonesia Banggi Kepulauan</title>
    <link rel="shorcut icon" href="<?php echo base_url().'theme/images/kpmi-icon.png'?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/simple-line-icons.css'?>">
    <!-- Slider / Carousel -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick-theme.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/owl.carousel.min.css'?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url().'theme/css/styleee.css'?>" rel="stylesheet">
    <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>
    <style>
        .card-img-top {
            width: 100%;
            height: 320px;
            object-fit: cover;
        }
        .card {
            max-width: 320px; /* Menyesuaikan lebar card dengan lebar gambar */
            margin: 0 auto; /* Untuk membuat card berada di tengah kolom */
        }
        .card-body {
            padding: 10px; /* Mengurangi padding di dalam card body */
        }
        @media (max-width: 768px) {
            .card {
                margin-bottom: 40px; /* Menambah jarak bawah antar card pada tampilan mobile */
            }
        }
    </style>
</head>

<body>
    
    <!--============================= HEADER =============================-->
    <div class="header-topbar">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-sm-8 col-md-9">
                    <div class="header-top_address">
                        <div class="header-top_list">
                            <span class="icon-phone"></span>+62 822 9138 3797
                        </div>
                        <div class="header-top_list">
                            <span class="icon-envelope-open"></span>kpmibangkepprovgtlo@gmail.com
                        </div>
                    </div>
                    <div class="header-top_login2">
                        <a href="https://wa.me/6282291383797?text=Hallo%20admin%20KPMI-Bangkep">Hubungi kami</a>
                    </div>
                </div>
             <div class="col-xs-6 col-sm-4 col-md-3">
                    <div class="header-top_login mr-sm-3">
                        <a href="https://wa.me/6282291383797?text=Hallo%20admin%20KPMI-Bangkep">Contact</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-toggle="affix">
        <div class="container nav-menu2">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar2 navbar-toggleable-md navbar-light bg-faded">
                        <button class="navbar-toggler navbar-toggler2 navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                            <span class="icon-menu"></span>
                        </button>
                        <a href="<?php echo site_url('');?>" class="navbar-brand nav-brand2"><img class="img img-responsive" width="180px;" src="<?php echo base_url().'theme/images/KPMI-BANGKEP.png'?>"></a>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('');?>">Beranda</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Profil
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="<?php echo site_url('daftar');?>">Pendaftaran</a>
                                        <a class="dropdown-item" href="<?php echo site_url('about');?>">Tentang</a>                                       
                                        <a class="dropdown-item" href="<?php echo site_url('struktur');?>">Struktur Organisasi</a>                                       
                                        <a class="dropdown-item" href="<?php echo site_url('galeri');?>">Gallery Kegiatan</a>                                       
                                    </div>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pengurus
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="<?php echo site_url('siswa');?>">Anggota</a>
                                        <a class="dropdown-item" href="<?php echo site_url('kabid');?>">Kabid</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('artikel');?>">Berita</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('pengumuman');?>">Pengumuman</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('agenda');?>">Agenda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('download');?>">Download</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('contact');?>">Kontak</a>
                                </li>
                             </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
      </div>
<section>
    <div class="slider_img layout_two">
        <div id="carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
                <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block" src="<?php echo base_url().'theme/images/pelantikan.jpg'?>" alt="First slide">
                    <div class="carousel-caption d-md-block">
                        <div class="slider_title">
                            <h1>Pelantikan</h1>
                            <h4>Pelantikan Pegurus Baru,<br> KPMI-BANGKEP <br> Periode 2023/2024.</h4>
                            <div class="slider-btn">
                                <a href="<?php echo site_url('artikel');?>" class="btn btn-default1">selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block" src="<?php echo base_url().'theme/images/fotbar.jpg'?>" alt="Second slide">
                    <div class="carousel-caption d-md-block">
                        <div class="slider_title">
                            <h1>foto Bersama</h1>
                            <h4>Foto Bersama Pengurus KPMI-Bangkep <br> Hari Raya Idul Adha 1445 Hijriyah</h4>
                            <div class="slider-btn">
                                <a href="<?php echo site_url('artikel');?>" class="btn btn-default1">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block" src="<?php echo base_url().'theme/images/mukbang.jpg'?>" alt="Third slide">
                    <div class="carousel-caption d-md-block">
                        <div class="slider_title">
                            <h1>Makan Bersama</h1>
                            <h4>Makan Bersama KPMI-BANGKEP <br> Kabinet Solid Hari Raya idul Adha 1445 Hijriyah</h4>
                            <div class="slider-btn">
                                <a href="<?php echo site_url('artikel');?>" class="btn btn-default1">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                <i class="icon-arrow-left fa-slider" aria-hidden="true"></i>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                <i class="icon-arrow-right fa-slider" aria-hidden="true"></i>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>
<!--//END HEADER -->

<!--=============Sambutan Ketum============== -->
<section class="our_courses">
<div class="container-fluid pt-1 pb-5">
      <div class="container">
        <h2 class="text-center"><b>Sambutan</b></h2>
        <h6 class="text-center">
          Ketua Umum
        </h6>
        <div class="clearfix pt-6">
          <center><img
            src="<?php echo base_url().'theme/images/Ketua.png'?>"
            class="col-md-6 float-md-end mb-4 crop-img"
            width="350"
            height="300"
          /></center>
          <p>
          Website KPMI BANGKEP Prov. Gorontalo ini berfungsi sebagai Wadah pusat Informasi Untuk seluruh Kader-Kader atau Mahasiswa(i) BANGKEP di Gorontalo. 
          Dan juga untuk siswa(i) yang ingin Berkuliah Di gorontalo, maka di mana website ini bekerja untuk Memberi informasi Terkait Organisasi,Berita Organisasi ataupun Kedaerahan, Kegiatan-Kegiatan Organisasi Dan Informasi Terkait Kampus Di gorontalo yang pada intinya website ini bertujuan untuk Mengakomodir seluruh Kegiatan Yg bersifat Organisatoris maupun Akademisatoris.
          </p>      
        </div>
      </div>
    </div>
</section>
<!--=============End Sambutan Ketum============== -->

<!-- ==========Pengurus Inti================= -->
<section class="event">
<div class="container">
        <div class="row pt-4">
            <div class="col-12 text-center">
                <h2>Pengurus Inti</h2>
            </div>
        </div>
        <div class="row pt-4 gx-4 gy-4 justify-content-center">
            <div class="col-md-4 d-flex justify-content-center">
                <div class="card">
                    <img src="<?php echo base_url().'theme/images/ketum.jpg'?>" class="card-img-top" alt="Image 1">
                    <div class="card-body text-center">
                        <h3 class="card-title"><b>Irfan Kahar</b></h3>
                        <p class="card-text">Ketua Umum <br>Periode 2023/2024</p> 
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex justify-content-center">
                <div class="card">
                    <img src="<?php echo base_url().'theme/images/sekum.jpg'?>" class="card-img-top" alt="Image 2">
                    <div class="card-body text-center">
                        <h3 class="card-title"><b>Reki Molunggui</b></h3>
                        <p class="card-text">Sekretaris Umum  <br>Periode 2023/2024</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex justify-content-center">
                <div class="card">
                    <img src="<?php echo base_url().'theme/images/bendum.jpg'?>" class="card-img-top" alt="Image 3">
                    <div class="card-body text-center">
                        <h5 class="card-title"><b>Herawati</b></h5>
                        <p class="card-text">Bendahara Umum  <br>Periode 2023/2024</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ==========End Pengurus inti================= -->

<!--============================= OUR COURSES =============================-->
<section class="our_courses">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Berita Terbaru</h2>
            </div>
        </div>
        <div class="row">
          <?php foreach ($berita->result() as $row) :?>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="courses_box mb-4">
                    <div class="course-img-wrap">
                        <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" class="img-fluid" alt="courses-img">
                    </div>
                    <!-- // end .course-img-wrap -->
                    <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" class="course-box-content">
                        <h3 style="text-align:center;"><?php echo $row->tulisan_judul;?></h3>
                    </a>
                </div>
            </div>
          <?php endforeach;?>
        </div> <br>
        <div class="row">
            <div class="col-md-12 text-center">
                <a href="<?php echo site_url('artikel');?>" class="btn btn-default">View More</a>
            </div>
        </div>
    </div>
</section>
<!--//END OUR COURSES -->

<!--============================= EVENTS =============================-->
<section class="event">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="event-img2">
                <?php foreach ($pengumuman->result() as $row) :?>
                <div class="row">
                    <div class="col-3"> <img width="100px" src="<?php echo base_url().'theme/images/announcement3.png'?>" class="img-fluid" alt="event-img"></div><!-- // end .col-sm-3 -->
                    <div class="col-9"> <h3><a href="<?php echo site_url('pengumuman');?>"><?php echo $row->pengumuman_judul;?></a></h3>
                      <span><?php echo $row->tanggal;?></span>
                      <p><?php echo limit_words($row->pengumuman_deskripsi,10).'...';?></p>

                    </div><!-- // end .col-sm-7 -->
                </div><!-- // end .row -->
                <?php endforeach;?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-md-12">
                      <?php foreach ($agenda->result() as $row):?>
                        <div class="event_date">
                            <div class="event-date-wrap">
                                <p><?php echo date("d", strtotime($row->agenda_tanggal));?></p>
                                <span><?php echo date("M. y", strtotime($row->agenda_tanggal));?></span>
                            </div>
                        </div>
                        <div class="date-description">
                            <h3><a href="<?php echo site_url('agenda');?>"><?php echo $row->agenda_nama;?></a></h3>
                            <p><?php echo limit_words($row->agenda_deskripsi,10).'...';?></p>
                            <hr class="event_line">
                        </div>
                        <?php endforeach;?>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!--//END EVENTS -->
<!--============================= DETAILED CHART =============================-->
<div class="detailed_chart">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-3">
                <div class="chart-img">
                    <img src="<?php echo base_url().'theme/images/anggota1.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_siswa;?></span> Anggota</p>
                </div>
            </div>
            <div class="col-3">
                <div class="chart-img">
                    <img src="<?php echo base_url().'theme/images/download.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_files;?></span> Download
                    </p>
                </div>
            </div>
            <div class="col-3">
                <div class="chart-img">
                    <img src= "<?php echo base_url().'theme/images/agenda.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_agenda;?></span> Agenda</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//END DETAILED CHART -->
<!--============================= FOOTER =============================-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="foot-logo">
                    <a href="<?php echo site_url();?>">
                        <img width="180" src="<?php echo base_url().'theme/images/icon-putih.png'?>" class="img-fluid" alt="footer_logo">
                    </a>
                    <p><?php echo date('Y');?> © copyright  <a href="https://kpmi-bangkep.000webhostapp.com/" target="_blank">KPMI-BANGKEP</a>. <br>Developer by Bima</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="sitemap">
                        <h3>Menu Utama</h3>
                        <ul>
                            <li><a href="<?php echo site_url();?>">Beranda</a></li>
                            <li><a href="<?php echo site_url('about');?>">Tentang</a></li>
                            <li><a href="<?php echo site_url('artikel');?>">Berita</a></li>
                            <li><a href="<?php echo site_url('contact');?>">Kontak</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                  <div class="sitemap">
                      <h3>Personalia</h3>
                      <ul>
                          <li><a href="<?php echo site_url('siswa');?>">Anggota</a></li>
                          <li><a href="<?php echo site_url('pengumuman');?>">Pengumuman</a></li>
                          <li><a href="<?php echo site_url('agenda');?>">Agenda</a></li>
                          <li><a href="<?php echo site_url('download');?>">Download</a></li>
                      </ul>
                  </div>
                </div>
                <div class="col-md-3">
                    <div class="address">
                        <h3>Hubungi Kami</h3>
                        <p><span>Alamat : </span>Jl. M. Husni Thamrin No.17, Limba U Dua, Kota Sel., Kota Gorontalo, Gorontalo 96138</p>
                        <p>Email : kpmibangkkeppprovgtlo@gmail.com
                            <br> Phone : +62 822 9138 3797</p>
                            <ul class="footer-social-icons">
                                <li><a href="https://web.facebook.com/kpmibangkep"><i class="fa fa-facebook fa-fb" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/kpmi_bangkep"><i class="fa fa-instagram fa-in" aria-hidden="true"></i></a></li>
                                <li><a href="mailto:kpmibangkkeppprovgtlo@gmail.com"><i class="fa fa-envelope-o fa-tw" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--//END FOOTER -->
        <!-- jQuery, Bootstrap JS. -->
        <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
        <!-- Plugins -->
        <script src="<?php echo base_url().'theme/js/slick.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/waypoints.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/counterup.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
        <script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
        <!-- Subscribe -->
        <script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>
        <!-- Script JS -->
        <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
        <script src="<?php echo base_url().'dist/sweetalert2.all.min.js'?>"></script>
    </body>

    </html>
