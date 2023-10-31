<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio Details - Gp Bootstrap Template</title>
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

  <!-- =======================================================
  * Template Name: Gp - v4.9.1
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script>
  function submitForm(event) {
    event.preventDefault();
    var form = document.getElementById("myForm");

    // Create a new XMLHttpRequest object
    var xhr = new XMLHttpRequest();

    // Set the callback function
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4) {
        // The request is complete
        if (xhr.status == 200) {
          // The request was successful
          var response = xhr.responseText;
          document.getElementById("hrnapi").innerHTML = response;
          // Do something with the response
        } else {
          // The request was unsuccessful
        }
      }
    };
    // Set the request method and URL
    xhr.open(form.method, form.action);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    var formData = new FormData(form);
    var params = new URLSearchParams(formData);
    xhr.send(params);

  }
  </script>
</head>

<body>

  <!-- ======= Header ======= -->
  <%@ include file="include.header.jsp" %>
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>California Solar Group Technician Portal</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Signup</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper" id="hrnapi" name="hrnapi">
              <form action="hrn.jsp" method="POST" name="myForm" id="myForm" >
                <input type="hidden" id="apiAction" name="apiAction" value="signupemployee" />
                  <div class="form-group mt-3">
                <div class="row">
                  <div class="col">
                <label for="firstName">First Name:</label><br>
                <input type="text"  class="form-control mt-1" id="firstName" name="firstName"  required  tabindex="1"><br>
                  </div>
                  <div class="col">
                <label for="middleInitial">Middle Initial:</label><br>
                <input type="text"  class="form-control mt-1" id="middleInitial" name="middleInitial"  tabindex="2"><br>
                  </div>
                  <div class="col">
                <label for="lastName">Last Name:</label><br>
                <input type="text"  class="form-control mt-1" id="lastName" name="lastName" required  tabindex="3"><br>
                  </div>
                </div>
                  </div>

                <div class="form-group mt-3">
                <label for="email">Email:</label><br>
                <input type="email"  class="form-control" id="email" name="email" required  tabindex="4"><br>
                </div>
                <div class="form-group mt-3">
                <label for="phone">Phone:</label><br>
                <input type="text"  class="form-control" id="phone" name="phone" required  tabindex="5"><br>
                </div>
                <div class="form-group mt-3">
                <label for="username">Username:</label><br>
                <input type="text"  class="form-control" id="username" name="username" required  tabindex="6"><br>
                </div>
                <div class="form-group mt-3">
                <label for="password">Password:</label><br>
                <input type="password"  class="form-control" id="password" name="password" required  tabindex="7"><br>
                </div>
                <div class="form-group mt-3">
                <label for="address">Address:</label><br>
                <input type="text"  class="form-control" id="address" name="address" required  tabindex="8"><br>
                </div>


                <div class="form-group mt-3">


                <div class="row">
                <div class="col">
                <label for="city">City:</label><br>
                <input type="text"  class="form-control" id="city" name="city" required  tabindex="9"><br>
                </div>
                <div class="col">
                <label for="state">State:</label><br>
                <input type="text"  class="form-control" id="state" name="state" required  tabindex="10"><br>
                  </div>
                  <div class="col">
                  <label for="state">Zip:</label><br>
                  <input type="text"  class="form-control" id="zipcode" name="zipcode" required  tabindex="11"><br><br>
                  </div>
                </div>
                </div>
                <div class="form-group  mt-3">
                  <label for="url_facebook">Referred By</label>
                  <input type="text" class="form-control" id="referred_by" name="referred_by" <% if (request.getParameter("referred_by") !=null) { %>value="<%=request.getParameter("referred_by")%>" <% } %>  tabindex="12" >
                </div>
                <hr class="mt-3">
                  <button type="submit" class="btn btn-primary btn-lg btn-block"  tabindex="13" onclick="submitForm(event)" >Sign-up</button>
                  </form>
            </div>
          </div>

          <div class="col-lg-4">

              <div class="portfolio-info">
                <h3><a href="signin.employee.jsp">Sign In</a></h3>
              </div>
            <div class="portfolio-description">
              <p>
                California Solar Group technician portal is an online platform designed for home inspectors and property assessors. It streamlines workflow by allowing technicians to access job assignments, schedules, and client details, as well as update inspection reports and communicate with clients. The mobile functionality of the portal enables technicians to work remotely, upload photos, and update reports on the go. This makes the platform a valuable tool for technicians in the field, allowing them to efficiently manage their inspections and assessments.
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

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
