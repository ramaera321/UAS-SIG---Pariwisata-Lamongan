<?php

include '../pariwisatalamongan/functions.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>LaLand - Destinasi Wisata Lamongan</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/peta.css" rel="stylesheet">

  <!-- Leaflet CSS -->
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />

  <!-- Leaflet JS -->
  <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>

  <!-- =======================================================
  * Template Name: BizLand - v3.7.0
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">info@gmail.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+62 885 6744 2090</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.html">LaLand<span>.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="index.php#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="index.php#services">Destinasi</a></li>
          <li><a class="nav-link scrollto" href="index.php#team">Peta</a></li>
          <li><a class="nav-link scrollto " href="index.php#portfolio">Galeri</a></li>
          <li><a class="nav-link scrollto" href="index.php#about">Tentang Kami</a></li>
          <li><a class="nav-link scrollto" href="index.php#contact">Kontak</a></li>
          <li><button class="btn btn-outline-primary me-2" type="button"><a href="../pariwisatalamongan/index.php?m=login">Login</a></button></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1>Welcome to <span>LaLand</span></h1>
      <h2>Temukan destinasi wisata kesukaanmu di Lamongan</h2>
      <div class="d-flex">
        <a href="#services" class="btn-get-started scrollto">Get Started</a>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">
        <?php
        $sql = "SELECT * 
            FROM tb_tempat 
            ORDER BY id_tempat";
        $rows_tempat = $db->get_results($sql);
        ?>
        <div class="row">

          <?php for ($i = 0; $i < 4; $i++) : ?>

            <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
              <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                <img src="../pariwisatalamongan/assets/images/tempat/<?= $rows_tempat[$i]->gambar; ?>" class="card-img-top mb-4" alt="...">
                <h4 class="title"><a href="tempat-details.php?kode_id=<?= $rows_tempat['id_tempat']; ?>"><?= $rows_tempat[$i]->nama_tempat; ?></a></h4>
                <p class="description">
                  <?php
                  $arr = explode(" ", $rows_tempat[$i]->deskripsi);
                  $limit = 10;
                  $new = [];

                  if (count($arr) > $limit) {
                    for ($j = 0; $j < $limit; $j++) {
                      array_push($new, $arr[$j]);
                    }
                  }

                  if ($new) {
                    $new = implode(" ", $new);
                    print_r($new . '...');
                  } else {
                    print_r($title);  // Output : Rasang Beam Steal Valve
                  }
                  ?>
                </p>
              </div>
            </div>

          <?php endfor; ?>

        </div>

      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Destinasi Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Destinasi</h2>
          <h3>Temukan <span>Destinasi Wisata</span> Kesukaanmu Disini</h3>
        </div>

        <?php
        $koneksi = mysqli_connect("localhost", "root", "", "pariwisatalamongan");
        $batas = 6;
        $halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
        $halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

        $previous = $halaman - 1;
        $next = $halaman + 1;

        $data = mysqli_query($koneksi, "select * from tb_tempat");
        $jumlah_data = mysqli_num_rows($data);
        $total_halaman = ceil($jumlah_data / $batas);

        $data_tempat = mysqli_query($koneksi, "select * from tb_tempat limit $halaman_awal, $batas");
        $nomor = $halaman_awal + 1;
        ?>

        <div class="row">

          <?php while ($row = mysqli_fetch_array($data_tempat)) { ?>

            <div class="col-lg-4 col-md-6 mb-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
              <div class="icon-box">
                <img src="../pariwisatalamongan/assets/images/tempat/<?= $row['gambar']; ?>" class="card-img-top mb-4" alt="...">
                <h4><a href="tempat-details.php?kode_id=<?= $row['id_tempat']; ?>"><?= $row['nama_tempat']; ?></a></h4>
                <p>
                  <?php
                  $arr = explode(" ", $row['deskripsi']);
                  $limit = 12;
                  $new = [];

                  if (count($arr) > $limit) {
                    for ($j = 0; $j < $limit; $j++) {
                      array_push($new, $arr[$j]);
                    }
                  }

                  if ($new) {
                    $new = implode(" ", $new);
                    print_r($new . '...');
                  } else {
                    print_r($title);  // Output : Rasang Beam Steal Valve
                  }
                  ?>
                </p>
              </div>
            </div>

          <?php
          }
          ?>

          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" <?php if ($halaman > 1) {
                                        echo "href='?halaman={$previous}#services'";
                                      } ?> aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <?php for ($x = 1; $x <= $total_halaman; $x++) { ?>
                <li class="page-item <?= $_GET['halaman'] == $x ? 'active' : '' ?>"><a class="page-link" href="?halaman=<?php echo $x ?>#services"><?php echo $x; ?></a></li>
              <?php } ?>
              <li class="page-item">
                <a class="page-link" <?php if ($halaman < $total_halaman) {
                                        echo "href='?halaman={$next}#services'";
                                      } ?> aria-label="Next#services">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>

        </div>

      </div>
    </section><!-- End Destinasi Section -->

    <!-- ======= Peta Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Peta</h2>
          <h3>Lacak <span>Lokasi</span> Wisata Yang Ada</h3>
          <p>Kamu bisa melacak semua lokasi wisata yang ada di Lamongan</p>
        </div>

        <div id="map"></div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="zoom-in">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Wisatawan</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Akhirnya bisa menemukan wisata dilamongan dengan lebih mudah. mantap deh pokoknya !!
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Mahasiswa</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Sangat membantu sekali, jadi bisa cari informasi wisata di Lamongan yang cocok dan aku suka.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>Joko Slamet</h3>
                <h4>Pekerja</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Sangat informatif dan membantu mencari wisata yang bagus. Fitur Mapsnya juga bagus jadi gak kesasar.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Galeri Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Galeri</h2>
          <h3>Cek Isi <span>Galeri Foto</span> Kami</h3>
        </div>

        <!-- <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div> -->

        <?php
        $sql = "SELECT * 
          FROM tb_galeri 
          ORDER BY id_galeri";
        $rows = $db->get_results($sql);
        ?>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

          <?php for ($i = 0; $i < 12; $i++) { ?>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <img src="../pariwisatalamongan/assets/images/galeri/<?= $rows[$i]->gambar; ?>" class="img-fluid" alt="">
              <div class="portfolio-info">
                <a href="../pariwisatalamongan/assets/images/galeri/<?= $rows[$i]->gambar; ?>" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>

          <?php } ?>

          <!-- <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 2</h4>
              <p>App</p>
              <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 2</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 2</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 3</h4>
              <p>App</p>
              <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 1</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 3</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div> -->

        </div>

      </div>
    </section><!-- End Galeri Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Tentang Kami</h2>
          <h3>Cari Tahu Lebih Banyak <span>Tentang Kami</span></h3>
          <p>Website Blog yang menyediakan informasi destinasi cantik di kabupaten Lamongan.</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <h3>Semua destinasi menarik ada disini. Pastikan kalian pernah datang ke salah satunya!</h3>
            <p class="fst-italic">
              Alasan kenapa kalian yang suka berpetualang dan berwisata <b>wajib</b> untuk mengunjungi website <b>LaLand.</b>
            </p>
            <ul>
              <li>
                <i class="bx bx-store-alt"></i>
                <div>
                  <h5>Daftar Destinsasi Lamongan Semuanya Ada Disini.</h5>
                  <p>Masih Bingung mau kemana, Temukan destinasi kesukaanmu dengan lebih mudah.</p>
                </div>
              </li>
              <li>
                <i class="bx bx-images"></i>
                <div>
                  <h5>Informasi lokasi yang lengkap dan tepat.</h5>
                  <p>Gak usah takut nyasar, Kami menyediakan informasi beserta letak objek wisata tersebut kok.</p>
                </div>
              </li>
            </ul>
            <p>
              Semua informasi untuk petualangan kalian yang lebih seru semuanya ada disini.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Kontak</h2>
          <h3><span>Kontak Kami</span></h3>
          <p>Hubungi kami untuk info dan keterangan lebih lanjut.</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>Lamongan, Jawa Timur, Indonesia</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>info@gamil.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+62 885 6744 2090</p>
            </div>
          </div>

        </div>

        <!-- <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-6 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div> -->

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>LaLand<span>.</span></h3>
            <p>
              Lamongan <br>
              Jawa Timur<br>
              Indonesia <br><br>
              <strong>Phone:</strong> +62 885 6744 2090<br>
              <strong>Email:</strong> info@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#hero">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#services">Destinasi</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#team">Peta</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#portfolio">Galeri</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">

          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Sosial Media Kami</h4>
            <p>Ikuti juga kami di akun sosial media kami untuk informasi yang lebih banyak.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <strong><span>LaLand</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

  <script>
    var tempat = <?php echo json_encode($rows_tempat, JSON_NUMERIC_CHECK) ?>;

    var map = L.map('map').setView([-7.119, 112.416], 10);

    var tiles = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
      maxZoom: 18,
      attribution: 'Peta Destinasi Wisata di Lamongan',
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1
    }).addTo(map);

    for (var i = 0; i < tempat.length; i++) {
      var marker = L.marker([tempat[i]['lat'], tempat[i]['lng']]).addTo(map)
        .bindPopup(`<b>${tempat[i]['nama_tempat']}</b> </br> <a class="btn btn-primary btn-sm mt-2 text-white start-50" href="">Detail</a>`).openTooltip();
    }

    // for (var i = 1; i <= tempat.length; i++) {
    //   var marker = L.marker([tempat[i]['lat'], tempat[i]['lng']]).addTo(map)
    //     .bindTooltip(`<b>${tempat[i]['nama_tempat']}</b>`).openTooltip();
    // }

    // var sukodadi = L.marker([-7.094775, 112.3319778]).addTo(map)
    //   .bindTooltip("<b>Sukodadi Karnival</b>").openTooltip();

    // var drajat = L.marker([-6.8842449, 112.3870642]).addTo(map)
    //   .bindTooltip("<b>Makam Sunan Drajat</b>").openTooltip();

    // var wbl = L.marker([-6.8663907, 112.3574593]).addTo(map)
    //   .bindTooltip("<b>Wisata Bahari Lamongan</b>").openTooltip();

    // var museum = L.marker([-6.8668756, 112.3594053]).addTo(map)
    //   .bindTooltip("<b>Museum Seni Islam Indonesia</b>").openTooltip();

    // var goaMaharani = L.marker([-6.8678965, 112.3600124]).addTo(map)
    //   .bindTooltip("<b>Kebun Binatang dan Goa Maharani</b>").openTooltip();


    console.log(tempat);
  </script>

</body>

</html>