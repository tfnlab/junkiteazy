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
  <div class="phone">
  <i class="bi bi-phone"></i>
  <h4>Call:</h4>
  <p><a href="tel:7472862828">(747) 286-2828</a></p>
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
  <div class="phone">
  <i class="bi bi-phone"></i>
  <h4>Call:</h4>
  <p><a href="tel:8186582362">(818) 658-2362</a></p>
  </div>

  <div class="email">
  <i class="bi bi-envelope"></i>
  <h4>Email:</h4>
  <p><a href="mailto:info@casolargroup.com">info@casolargroup.com</a></p>
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
          <div class="text-center"><button type="submit" >Send Message</button></div>

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
          document.querySelector(".error-message").style.display = "none";
          document.getElementById("thanksmessage").textContent = xhr.responseText; // Display the response text
          document.getElementById("successcontact").classList.remove("d-none"); // Make the element visible
          // You can optionally reset the form here
          document.getElementById("contactform").reset();
          document.getElementById("contactform").style.display = 'none';
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

<footer id="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-5 col-md-6">
          <div class="footer-info">
              <h3>California Solar Group</h3>
              <p>casolargroup<span>.</span>com</p>
              <p>
                <a href="https://www.google.com/maps?q=208+S+Grand+Ave,+Santa+Ana,+CA+92701" target="_blank">
                7647 Hayvenhurst Ave, Unit 26, <br>
                Van Nuys, CA 91406, USA<br>
                </a>
                <strong>Phone:</strong> <a href="tel:7472862828">(747) 286-2828</a><br>
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
            <li><i class="bx bx-chevron-right"></i> <a href="signup.jsp">Customer Portal</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="signup.employee.jsp">Technicians</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="index.html#services">Services</a></li>
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

<div id="fb-root"></div>
<!-- Your Chat Plugin code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>
<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "106217184587017");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v17.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<script>
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

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-Z267KV90QY"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-Z267KV90QY');
</script>
