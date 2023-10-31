<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>California Solar Group - Get Quote</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDHwbVpNgh3G5yG1cmT0HMe8TikX4DC2qE&libraries=places"></script>

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

  <!-- ======= Header ======= -->
  <%@ include file="include.header.jsp" %>
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Price Quote</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Price Quote</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container">
        <h1 class="mt-5">Solar Installation Price Quote</h1>
        <form action="hrn.jsp" method="post" class="mt-4" id="quoteform" name="quoteform" >
          <input type="hidden" name="apiAction" id="apiAction"  value="addQuote" >

          <div class="form-group mt-4">
            <label for="name">Your Name:</label>
            <input type="text" id="customer_name" name="customer_name" class="form-control" required>
          </div>

          <div class="form-group mt-4">
            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
          </div>

          <div class="form-group mt-4">
            <label for="phone">Your Phone Number:</label>
            <input type="tel" id="phone_number" name="phone_number" class="form-control" required>
          </div>

          <div class="form-group mt-4">
            <label for="address">Installation Address:</label>
            <input type="text" id="installation_address" name="installation_address" class="form-control" required>
          </div>

          <div class="form-group mt-4">
            <label for="roof_type">Roof Type:</label>
            <select id="roof_type" name="roof_type" class="form-control" required>
              <option value="">Select Roof Type</option>
              <option value="Flat">Flat</option>
              <option value="Sloped">Sloped</option>
              <option value="Tile">Tile</option>
              <option value="Metal">Metal</option>
              <option value="Other">Other</option>
            </select>
          </div>

          <div class="form-group mt-4">
            <label for="energy_usage">Average Monthly Energy Usage (kWh):</label>
            <input type="number" id="energy_usage" name="energy_usage" class="form-control" required>
          </div>

          <div class="form-group mt-4">
            <label for="message">Additional Message:</label>
            <textarea id="additional_message" name="additional_message" rows="4" class="form-control"></textarea>
          </div>

          <button type="submit" class="btn btn-primary mt-4" onclick="sendMessage(event)" >Submit</button>
        </form>
        <div id="successquote" class="alert alert-success d-none" role="alert"></div>
        <script>
          document.getElementById("quoteform").addEventListener("submit", function(event) {
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
                  document.getElementById("successquote").textContent = xhr.responseText; // Display the response text
                  document.getElementById("successquote").classList.remove("d-none"); // Make the element visible
                  // You can optionally reset the form here
                  document.getElementById("quoteform").reset();
                } else {
                  // Show the error message
                  document.getElementById("successquote").textContent = "An error occurred. Please try again.";
                }
              }
            };
            xhr.send(formData);
          });
        </script>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Contact</h2>
        <p>Contact Us</p>
      </div>

      <div>
        <iframe  style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3299.5205430802876!2d-118.49520754893047!3d34.20972478046801!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c299f8a61e91f9%3A0x3832730f1ae6a8e4!2s7647%20Hayvenhurst%20Ave%2C%20Van%20Nuys%2C%20CA%2091406!5e0!3m2!1sen!2sus!4v1679779568090!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>

      <div class="row mt-5">

        <div class="col-lg-4">
          <div class="info">
            <div class="address">
              <i class="bi bi-geo-alt"></i>
              <h4>casolargroup<span>.</span>io</h4>
              <p>
                  7647 Hayvenhurst Ave, Unit 26, Van Nuys, CA 91406, USA
              </p>
            </div>

            <div class="email">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>info@casolargroup.io</p>
            </div>

            <div class="phone">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>(888) 804-5950</p>
            </div>

          </div>

        </div>

        <div class="col-lg-8 mt-5 mt-lg-0">

          <form action="hrn.jsp" method="post" role="form" class="php-email-form">
            <input type="hidden" name="apiAction" id="apiAction"  value="addQuote" >
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
            <div class="text-center"><button type="submit" >Send Message</button></div>

          </form>

                        <div class="loading" style="display: none;">Loading...</div>
                        <div class="error-message" style="display: none;">Error</div>
                        <div class="sent-message" style="display: none;">Thank You</div>
                        <div id="successcontact" class="alert alert-success d-none" role="alert"></div>
        </div>

      </div>

    </div>
  </section><!-- End Contact Section -->

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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
  $(document).ready(function() {
    // Initialize the autocomplete object
    var autocomplete = new google.maps.places.Autocomplete(document.getElementById('installation_address'));

    // Restrict autocomplete results to addresses only
    autocomplete.setTypes(['address']);

    // Handle the selection of an address
    google.maps.event.addListener(autocomplete, 'place_changed', function() {
      var place = autocomplete.getPlace();

      // Optionally, you can access various address components
      var address = place.formatted_address;
      var latitude = place.geometry.location.lat();
      var longitude = place.geometry.location.lng();

      // Use the selected address or its components as needed
      console.log('Address:', address);
      console.log('Latitude:', latitude);
      console.log('Longitude:', longitude);
    });
  });

  </script>
</body>

</html>
