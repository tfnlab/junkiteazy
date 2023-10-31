<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>California Solar Group - Blog</title>
  <meta name="keywords" content="solar technology, California Solar Group, renewable energy, solar power, solar panels, clean energy, solar installation, solar energy solutions">
  <meta name="description" content="Explore the latest advancements in solar technology with California Solar Group. Our expert team provides innovative solar energy solutions, including solar panel installation and renewable energy systems. Harness the power of clean energy and make a positive impact on the environment. Contact us today for reliable and efficient solar technology solutions.">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Gp - v4.9.1
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
      .navbar-logo {
          margin-right: 10px;
      }
  </style>
</head>

<body>


  <%@ include file="include.header.jsp" %>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Blog</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Blog</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container">

          <div id="articles"></div>
          <HR>
          <a href="https://casolargroup.io/">Visit Casolargroup.io for more blogs and information about solar.</a>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/he/1.2.0/he.min.js"></script>
        <script>
          // Fetch JSON data from the URL
          fetch('https://casolargroup.io/wp-json/wuxt/v1/front-page')
            .then(response => response.json())
            .then(data => {
              const articlesContainer = document.getElementById('articles');

              // Loop through the articles and create Bootstrap cards with decoded title, content, and hyperlink
              data.forEach(article => {
                const card = document.createElement('div');
                card.className = 'card';
                card.style.width = '100%';
                card.style.marginBottom = '20px';

                const cardBody = document.createElement('div');
                cardBody.className = 'card-body';

                const title = document.createElement('h5');
                title.className = 'card-title';
                title.textContent = he.decode(article.title.rendered);
                cardBody.appendChild(title);

                const content = document.createElement('p');
                content.className = 'card-text';
                content.innerHTML = article.excerpt.rendered;
                cardBody.appendChild(content);

                card.appendChild(cardBody);
                articlesContainer.appendChild(card);
              });
            })
            .catch(error => console.error('Error:', error));
        </script>

      </div>
    </section>

  </main><!-- End #main -->

  <%@ include file="include.footer.jsp" %>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
