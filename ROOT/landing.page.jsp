<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>California Solar Group - Home</title>
  <meta name="description" content="California Solar Group provides expert solar panel installation, maintenance, and financing services. We offer customizable solar solutions for residential and commercial clients. Experience our exceptional customer service and high-quality equipment. Let's together harness the power of the sun for a sustainable future.">
  <meta name="keywords" content="California Solar Group, Solar Solutions, Solar Panels, Solar Battery Storage, EV Charging Stations, Solar Consultation, Solar System Design, Solar Installations, Solar Financing, Solar Maintenance, Residential Solar, Commercial Solar, Industrial Solar, Solar Tax Credit, Solar Incentives, High-Quality Solar Equipment, Solar Energy, Renewable Energy, Clean Energy, Green Energy, Sustainability, Solar Power, Solar Technology, Expert Solar Installation">

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


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Gp - v4.9.1
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script>
  const button = document.querySelector('.call-now-link-btn');

  button.addEventListener('click', function() {
    this.classList.toggle('collapsed');
  });

  function getsubscribe(event) {
    event.preventDefault(); // Prevent the default form submission behavior
    var form = document.getElementById('subscribeform');
    var email = document.getElementById('emailsub').value; // Get the form element
    // Validate the email address (you can add your own validation logic here)
    if (!validateEmail(email)) {
      alert('Please enter a valid email address.');
      return;
    }



    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4) {
        // The request is complete
        if (xhr.status == 200) {
          var response = xhr.responseText;
          document.getElementById('success').innerHTML = "Thank you for subscribing!" + response;
          form.reset(); // Reset the form
        } else {
          // The request was unsuccessful
          alert('An error occurred while subscribing. Please try again later.');
        }
      }
    };
    // Set the request method and URL
    var urlString = "hrn.jsp?apiAction=addSub&email=" + email;
    xhr.open("GET", urlString, true);
    xhr.send();

  }

  // Email validation function
  function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
  }

  </script>

  <style>
      .navbar-logo {
          margin-right: 10px;
      }
  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      <a class="navbar-brand" href="index.html">
        <img src="assets/img/logo.png" alt="Logo" class="navbar-logo" style="max-height: 35px; max-width: 100%;">
      </a>
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <h1>Powering Change with Solar Solutions<span>.</span></h1>
          <h2>Harness the Power of the Sun for Your Home or Business With Our Solar Panels, While Saving Money and the Environment</h2>
          <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
              <form class="text-center" onsubmit="scrollToAbout(event)">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control form-control-lg" id="zipCodeInput" placeholder="Enter your ZIP code">
                  </div>
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                </div>
              </form>
            </div>
          </div>

          <!-- Add this JavaScript code to your page -->
          <script>
            function scrollToAbout() {
              event.preventDefault();
              var aboutSection = document.getElementById("about");
              if (aboutSection) {
                aboutSection.scrollIntoView({ behavior: 'smooth' });
              }
            }
          </script>

        </div>
      </div>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/rentorown.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <h3>
              Do you rent or own ?
            </h3>
            <ul>
              <li>
                <a href="#quote-contact" onclick="scrollToQuoteContact()">Rent</a>
              </li>
              <li>
                <a href="#quote-contact" onclick="scrollToQuoteContact()">Own</a>
              </li>
            </ul>
            </div>
          </div>
        </div>

        <script>
          function scrollToQuoteContact() {
            event.preventDefault();
            var aboutSection = document.getElementById("features");
            if (aboutSection) {
              aboutSection.scrollIntoView({ behavior: 'smooth' });
            }
          }
        </script>
      </div>
    </section>


    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="row">
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-left" data-aos-delay="100">
              <h3>
                <h4>What is your average bill?</h4>
              </h3>
              <p>
                <div class="container">
                  <h2>Sliding Bar Example</h2>
                  <input type="range" min="0" max="100" value="50" class="slider" id="myRange">
                  <p>Value: <span id="demo"></span></p>
                </div>

                <script>
                var slider = document.getElementById("myRange");
                var output = document.getElementById("demo");
                output.innerHTML = slider.value;

                slider.oninput = function() {
                  output.innerHTML = this.value;
                }
                </script>
              </p>
              </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-right" data-aos-delay="100">
              <img src="assets/img/features.jpg" class="img-fluid" alt="">
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Features Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

       where can we send the solar quote

      </div>
    </section><!-- End Services Section -->




    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>

        <div>
          <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13198.082169262416!2d-118.4930135!3d34.2097248!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c299ba856126d5%3A0xd304ffb7ba22282!2sCA%20Solar%20Group!5e0!3m2!1sen!2sus!4v1687051962189!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <a href="https://www.google.com/maps/search/7647+Hayvenhurst+Ave,+Unit+26,+Van+Nuys,+CA+91406" target="_blank">
                <i class="bi bi-geo-alt" ></i>
                </a>
                <h4>Los Angeles Headquarters</h4>
                <p>
                    <a href="https://www.google.com/maps/search/7647+Hayvenhurst+Ave,+Unit+26,+Van+Nuys,+CA+91406" target="_blank">
                    7647 Hayvenhurst Ave, Unit 26, Van Nuys, CA 91406
                    </a>
                </p>
              </div>
              <HR>
              <div class="address">
                <a href="https://www.google.com/maps?q=208+S+Grand+Ave,+Santa+Ana,+CA+92701" target="_blank">
                <i class="bi bi-geo-alt"></i>
                </a>
                <h4>Orange County Branch Office</h4>
                <p>
                  <a href="https://www.google.com/maps?q=208+S+Grand+Ave,+Santa+Ana,+CA+92701" target="_blank">
                    208 S Grand Ave, Santa Ana, CA 92701
                  </a>
                </p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p><a href="mailto:info@casolargroup.com">info@casolargroup.com</a></p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p><a href="tel:8449160002">(844) 916-0002</a></p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="hrn.jsp" method="post" role="form" id="contactform" name="contactform" class="php-email-form">
              <input type="hidden" name="apiAction" id="apiAction"  value="addContact" >
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>

            </form>

                          <div class="loading" style="display: none;">Loading...</div>
                          <div class="error-message" style="display: none;">Error</div>
                          <div class="sent-message" style="display: none;">Thank You</div>
                          <div id="successcontact" class="alert alert-success d-none" role="alert">
                            <p id="thanksmessage"></p>
                            <p class="reaching-out">For Reaching out to us</p>
                            <p class="will-contact">We will contact you shortly to discuss your solar needs!</p>
                          </div>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
    <script>
      document.getElementById("contactform").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent form submission

        // Display the loading message
        document.querySelector(".loading").style.display = "block";
        document.querySelector(".error-message").style.display = "none";
        document.querySelector(".sent-message").style.display = "none";

        // Serialize the form data
        var formData = new URLSearchParams(new FormData(this)).toString();

        // Perform an AJAX request to submit the form data
        var xhr = new XMLHttpRequest();
        xhr.open("POST", this.action, true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
          if (xhr.readyState === XMLHttpRequest.DONE) {
            // Hide the loading message
            document.querySelector(".loading").style.display = "none";

            if (xhr.status === 200) {
              // Show the success message
              document.querySelector(".sent-message").style.display = "none";
              document.querySelector(".error-message").style.display = "none";
              document.getElementById("successcontact").textContent = xhr.responseText; // Display the response text
              document.getElementById("successcontact").classList.remove("d-none"); // Make the element visible
              // You can optionally reset the form here
              document.getElementById("contactform").reset();
            } else {
              // Show the error message
              document.querySelector(".error-message").style.display = "block";
              document.querySelector(".sent-message").style.display = "none";
              document.getElementById("successcontact").textContent = "An error occurred. Please try again.";
            }
          }
        };
        xhr.send(formData);
      });
    </script>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-5 col-md-6">
            <div class="footer-info">
              <h3>California Solar Group</h3>
              <p>casolargroup<span>.</span>com</p>
              <p>
                <a href="https://www.google.com/maps/search/7647+Hayvenhurst+Ave,+Unit+26,+Van+Nuys,+CA+91406" target="_blank">
                7647 Hayvenhurst Ave, Unit 26, <br>
                Van Nuys, CA 91406, USA<br>
              </a>
                <strong>Phone:</strong> <a href="tel:8449160002">(844) 916-0002</a><br>
                <strong>Email:</strong> <a href="mailto:info@casolargroup.com">info@casolgroup.com</a><br>
              </p>
  <div class="social-links mt-3">
  <a href="https://www.facebook.com/casolargroup" class="facebook"><i class="bx bxl-facebook"></i></a>
  <a href="https://www.instagram.com/californiasolargroup/?igshid=MzRlODBiNWFlZA%3D%3D" class="instagram"><i class="bx bxl-instagram"></i></a>
  <a href="https://www.linkedin.com/company/ca-solar-group/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
  </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="accessibility.jsp">Accessibility Statement</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="tos.jsp">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="pp.jsp">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-1 col-md-6 footer-links">

          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Stay up-to-date on the latest news and offers from California Solar Group by joining our newsletter. Simply enter your email address below and click "Subscribe" to start receiving regular updates from us.</p>
            </p>
            <form action="#subscribe" method="post" name="subscribeform" id="subscribeform" >
              <input type="email" name="emailsub" id="emailsub" > <input type="submit" value="Subscribe" onclick="getsubscribe(event)">
            </form>
            <hr>
            <div id="success" ></div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>California Solar Group</span></strong>. All Rights Reserved. CSLB #1067781
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/ -->
        Designed by <a href="https://homerenovationnation.com">Home Renovation Nation Inc.</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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


  <!-- Google tag (gtag.js) -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-Z267KV90QY"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-Z267KV90QY');
  </script>

  <script src="assets/js/acctoolbar.min.js"></script>
  <script>
  // optional init
    window.onload = function() {
      window.micAccessTool = new MicAccessTool({
        link: 'https://casolargroup.io/your-accessibility-declaration.pdf',
        contact: 'mailto:info@casolargroup.com',
        buttonPosition: 'left', // default is 'left'
        forceLang: 'en-EN' // default is 'en' may be 'he-IL', 'ru-RU', or 'fr_FR'
      });
    }
  </script>


</body>

</html>
