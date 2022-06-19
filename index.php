<?php include 'header.php' ?>
<?php include 'headernav.php' ?>
<?php include 'nav.php' ?>
<?php include 'config.php' ?>
<?php
error_reporting(0);
$msg = '';
if (isset($_POST['submit'])) {

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $subject = mysqli_real_escape_string($conn, $_POST['subject']);
   $comment = mysqli_real_escape_string($conn, $_POST['comment']);
   $headers = "From:" . $email;

   $sql = "INSERT INTO contact (name,email,subject,comment)
  VALUES ( '$name','$email', '$subject',' $comment')";
   mail("Info@BSM.net.in", $subject, $comment, $headers);

   if (!$result = $conn->query($sql)) {
      die('There was an error running the query [' . $conn->error . ']');
   }
   $msg = 'Our team will contact you shortly.';
}
?>
<div id="loading"></div>
<style type="text/css">
</style>
<script type="text/javascript">
   function EJEJC_lc(th) {
      return false;
   };
</script>
<script src="https://www.fatfreecartpro.com/ecom/box_fb_n.js" type="text/javascript"></script>

<div class="container-fluid container-strech">
   <div class="row">
      <!-- <div class="col-lg-5">
         <div class="wrapper_carousel">
            <h1 class="dynamic_text">
               <span class="brnd" style="padding: 2%">BSM</span>
               <span style="text-align: center;display: block;padding: 2%">one destination <br> for </span>
               <span
               class="txt-rotate"
               data-period="1000"
               data-rotate='[ "Hardware Solutions.", "Networking Solutions.","Software Solutions.", "Website Development.", "App Development." ]'></span>
            </h1>
         </div>
      </div> -->
      <div class="col-lg-12">
         <div class="carousel">
            <div class="carousel__slides">
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!--  <span>Black Pearl</span> <span>Select</span>  -->
                     <!-- <a class="button" href="https://unsplash.com/@scoutthecity" target="/black">Know More</a> -->
                  </div>
               </div>
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!--  <span>Black Pearl</span> <span>Caribbean</span>  -->
                     <!-- <a class="button" href="https://unsplash.com/@madbyte" target="/black">Know More</a> -->
                  </div>
               </div>
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!--  <span>Black Pearl</span> <span>Dark</span>  -->
                     <!-- <a class="button" href="https://unsplash.com/@maicoamorim" target="/black">Know More</a> -->
                  </div>
               </div>
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!-- <span>Black Pearl</span> <span>Select</span> -->
                     <!-- <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> -->
                  </div>
               </div>
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!-- <span>Black Pearl</span> <span>Select</span> -->
                     <!-- <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> -->
                  </div>
               </div>
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                     <!-- <span>Black Pearl</span> <span>Select</span> -->
                     <!-- <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> -->
                  </div>
               </div>
            </div>
            <div class="carousel__shutters"></div>
         </div>
      </div>
   </div>
   <!-- <div class="svgdiv">
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 230" style="margin-top: -100px;position: relative;bottom: 0">
      <path fill="#F2F3F4" fill-opacity="1" d="M0,96L60,85.3C120,75,240,53,360,85.3C480,117,600,203,720,224C840,245,960,203,1080,160C1200,117,1320,75,1380,53.3L1440,32L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"> 
      </path>
   </svg>
</div> -->
</div>
<!-- <div class="servicepanel " id="servicepanel" >
   <div class="container-fluid">
      <div class="row" style="margin: 3% 0% 0">
         <div class="teamtitle">
            <span class="teamhead">we work on</span>
         </div>
         <div class="flexcontainer">
            <div class="services " id="card1" >
               <div class="services_glyphicon">
                  <i class="fas fa-wifi"></i>
               </div>
               <div class="services_text">
                  <p>WIRELESS SOLUTIONS  </p>
               </div>
               <div class="services_description">
                  <ul>
                     <li>Design & Installation</li>
                     <span class="line"></span>
                     <li>Wireless Indoor / LAN Solutions</li>
                     <span class="line"></span>
                     <li>Wireless Access Point Systems</li>
                     <span class="line"></span>
                     <li>Wireless Outdoor / WAN solutions</li>
                     <span class="line"></span>
                     <li>Encrypted, Point-To-Point</li>
                     <span class="line"></span>
                     <li>Microwave Solutions</li>
                  </ul>
               </div>
            </div>
            <div class="services" id="card2">
               <div class="services_glyphicon">
                  <i class="far fa-edit"></i>
               </div>
               <div class="services_text">
                  <p>IT CONSULTING  </p>
               </div>
               <div class="services_description">
                  <ul>
                     <li>IT strategies that drive business growth</li>
                     <span class="line"></span>
                     <li>Decision facilitators for IT investments</li>
                     <span class="line"></span>
                     <li>Expertise in complex Technologies, Tools and Processes</li>
                     <span class="line"></span>
                     <li>Advice based on Research & Knowledge</li>
                     <span class="line"></span>
                     <li>In-depth field experience with wide customer range</li>
                     <span class="line"></span>
                  </ul>
               </div>
            </div>
            <div class="services " id="card3">
               <div class="services_glyphicon">
                  <i class="fas fa-cogs"></i>
               </div>
               <div class="services_text">
                  <p>NETWORK INFRASTRUCTURE</p>
               </div>
               <div class="services_description">
                  <ul>
                     <li>Design, Audit, Install and Maintenance</li>
                     <span class="line"></span>
                     <li>Integration or Isolation</li>
                     <span class="line"></span>
                     <li>Structured Cabling</li>
                     <span class="line"></span>
                     <li>Fiber Optic Single or multi-mode</li>
                     <span class="line"></span>
                     <li>Installation, Support & Maintenance for Servers / Switches, Routers Wireless Infrastructure – Certified Motorola Service Partner</li>
                     <span class="line"></span>
                  </ul>
               </div>
            </div>
            <div class="services " id="card4">
               <div class="services_glyphicon">
                  <i class="fas fa-do-not-enter"></i>
               </div>
               <div class="services_text">
                  <p>SECURITY SOLUTIONS </p>
               </div>
               <div class="services_description">
                  <ul>
                     <li>Antivirus & Firewalls</li>
                     <span class="line"></span>
                     <li>VPN – Server – Workstation Security</li>
                     <span class="line"></span>
                     <li>Secure Robust Surveillance Infrastructure</li>
                     <span class="line"></span>
                     <li>Back Up, Storage, Maintenance for Surveillance</li>
                     <span class="line"></span>
                     <li>Remote Access – IP technology – Wireless & Wired Surveillance Security Infrastructure  Solutions</li>
                     <span class="line"></span>
                  </ul>
               </div>
            </div>
            <div class="services " id="card5">
               <div class="services_glyphicon">
                  <i class="fas fa-cubes"></i>
               </div>
               <div class="services_text">
                  <p>STRUCTURED CABLING </p>
               </div>
               <div class="services_description">
                  <ul>
                     <li>Organized, Structured Cabling Infrastructure</li>
                     <span class="line"></span>
                     <li>Point-to-point cabling</li>
                     <span class="line"></span>
                     <li>Fiber Optic Trunks and Fiber Optic Enclosures, to enable a static cabling infrastructure</li>
                     <span class="line"></span>
                     <li>Increase uptime, optimizes scalability and maximizes return on investment</li>
                     <span class="line"></span>
                     <li>Easily adapt Data Center Hardware Migrations</li>
                     <span class="line"></span>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
</div> -->

<style type="text/css">
   .partnerbox>.row {
      margin: 2% 0;
   }
</style>
<div class="container-fluid wrapper_partner">
   <div class="row">
      <div class="col-lg-12" style="text-align: center;">
         <div class="teamtitle">
            <span class="teamhead">our products</span>
         </div>
      </div>
   </div>

   <div class="partnerbox">
      <div class="row">
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (1).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 5850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (6).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 4850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (11).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 4850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (14).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 4850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div> -->
      </div>
      <div class="row">
      <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (15).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 4850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Mixture</h5>
                     <img src="./img/products/product (16).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 1450</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Water Pump</h5>
                     <img src="./img/products/product (17).jpeg" style="width: 83% !important;">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-12">
                           <span style="">Price</span>
                           </div>
                           <div class="col-lg-6">
                              
                              <p><b style="font-size: 20px;">Rs 4500 (1 HP)</b></p>
                              
                           </div>
                           <div class="col-lg-6">
                           <p><b style="font-size: 20px;">Rs 3800 (1/2 HP)</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Sewing Machine</h5>
                     <img src="./img/products/product (1).jpeg">
                     <div class="pricePoint">
                        <div class="row">
                           <div class="col-lg-6">
                              <span style="">Price</span>
                              <p><b style="font-size: 20px;">Rs 4850</b></p>
                           </div>
                           <div class="col-lg-6">
                              Warrenty
                              <p><b style="font-size: 20px;">2 Years</b></p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Sewing Machine</h4>
                     <h4>Sewing machine products for home & Business.</h4>
                     <button type="button" onclick="location.href = './wlan-aps-and-controllers.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- <div class="row">
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        NComputing</h5>
                     <img src="./img/ncomputing-logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">NComputing</h4>
                     <h4>NComputing manufactures hardware and software to create virtual desktops</h4>
                     <button type="button" onclick="location.href = './ncomputing.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Seqrite</h5>
                     <img src="./img/seqrite-logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Seqrite</h4>
                     <h4>It provides an intuitive solution that filters unwanted software/malware from user-initiated Web/Internet traffic</h4>
                     <button type="button" onclick="location.href = './seqrite.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                        Delta Power Solutions</h5>
                     <img src="./img/delta-logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Delta Power Solutions</h4>
                     <h4>Delta provides complete power solutions for mission critical infrastructure, data centers & telecom providers across the globe.</h4>
                     <button type="button" onclick="location.href = './delta.php';" class="btn product_button">Learn More</button>
                  </div>
               </div>
            </div>
         </div>
      </div> -->
   </div>
   <br>

</div>
<style type="text/css">

</style>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 180">
   <path fill="#F2F3F4" fill-opacity="1" d="M0,160L80,133.3C160,107,320,53,480,58.7C640,64,800,128,960,138.7C1120,149,1280,107,1360,85.3L1440,64L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path>
</svg>
<div class="container">
   <div class="row">
      <div class="teamtitle">
         <span class="teamhead">Testimonials</span>
      </div>
      <div class="testimonialnew">
         <div class="col-lg-4">
            <div class="testcard">
               <div class="testsign sign1">
                  <span><i class="fas fa-quote-left"></i></span>
               </div>
               <div class="testdesc">
                  <span>
                     No complaints. Engineer turned up on time and knew what he was doing.


                  </span>
               </div>

               <div class="testbottom ">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                     <path fill="#0099ff" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
                  </svg>
                  <div class="testbottomdesc bottomdesc1">
                     <h4> <b>S. k. Mohanti </b></h4>
                     <!-- <h5>CEO</h5> -->
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-4">
            <div class="testcard">
               <div class="testsign sign2">
                  <span><i class="fas fa-quote-left"></i></span>
               </div>
               <div class="testdesc">
                  <span>
                     When my machine stopped working I found Repair and Maintenance via Google, my first call to them was very easy and things fell in place really well - the machine was fixed in the stated time and the machine has continued to perform well from then on
                     Thanks for your help </span>
               </div>

               <div class="testbottom">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                     <path fill="crimson" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
                  </svg>
                  <div class="testbottomdesc bottomdesc2">
                     <h4><b>SEEMA JHAWAR</b></h4>
                     <!-- <h5>Manging Director</h5> -->
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-4">
            <div class="testcard">
               <div class="testsign sign3">
                  <span><i class="fas fa-quote-left"></i></span>
               </div>
               <div class="testdesc">
                  <span>
                     One of the best repairing and Machine seller center in phulera. Good Behaviour and very cooprative. </span>
               </div>

               <div class="testbottom">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                     <path fill="darkorange" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
                  </svg>
                  <div class="testbottomdesc bottomdesc3">
                     <h4><b>Pawan K. Negi</b></h4>
                     <!-- <h5>Team  Lead </h5> -->
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<style>
   .formulll {

      padding: 0 0 0 25%;
      font-family: 'Montserrat', sans-serif;
   }

   .formiconsss {
      font-size: 25px;
      color: teal;
      background: white;
      height: 50px;
      width: 50px;
      text-align: center;
      line-height: 50px;
      display: inline-block;
      border-radius: 50%;
      vertical-align: top;

   }

   .formaddresss {
      padding: 2% 2%;
      color: white;
      letter-spacing: 1px;
      display: inline-block;
   }
</style>
<section class="newcontact" id="formlarge">
   <video width="100%" height="auto" autoplay muted loop>
      <source src="./img/Office Background 2.mp4" type="video/mp4">
   </video>
   <div class="overlay_part">
      <div class="text_part contact_item">
         <ul class="formulll">
            <li>
               <span class="formiconsss"><i class="fas fa-map-marker-alt"></i></span>
               <span class="formaddresss"> <b style="color: teal">Address</b><br> Bharat Silai Machine, Near UCO Bank<br>Gandhi Chowk Phulera,303338 Jaipur – Rajasthan</span>
            </li>
            <hr>
            <li>
               <span class="formiconsss"><i class="fas fa-phone-alt"></i></span>
               <span class="formaddresss"><b style="color: teal">Phone</b> <br>8058-858-858</span>
            </li>
            <hr>
            <li>
               <span class="formiconsss"><i class="fas fa-envelope-square"></i></span>
               <span class="formaddresss"><b style="color: teal">Email</b> <br>info@BSM.net.in</span>
            </li>

         </ul>
      </div>
      <div class="formpart contact_item">
         <div class="innerform">

            <form action="" class="innerform_inputs" method="POST">
               <div class="form-group">
                  <label for="name" style="font-size: 20px">Send us Message</label>

               </div>
               <div class="form-group">
                  <input type="text" required class="form-control" placeholder="Name" name="name" id="name">
               </div>
               <div class="form-group">
                  <input type="email" required class="form-control" name="email" placeholder="Email" id="email">
               </div>
               <div class="form-group">
                  <input type="subject" name="subject" class="form-control" placeholder="subject" id="subject">
               </div>
               <div class="form-group">
                  <textarea class="form-control" required name="comment" rows="5" placeholder="comment" id="comment"></textarea>
               </div>
               <button type="submit" name="submit" class="btnns btn-default">Submit</button>
               <?php echo $msg; ?>
            </form>
         </div>
      </div>


   </div>
</section>
<div class="container-fluid Wrapperform" id="contact">
   <div class="row" style="background: white">
      <div class="teamtitle">
         <span class="teamhead">Contact us</span>
      </div>
      <div class="col-lg-6 form">
         <div class="innerform">
            <div class="innerform_title">
               <p>Leave us your info</p>
               <!-- <p >and we will get back to you.</p> -->
            </div>
            <form action="" class="innerform_inputs" method="POST">
               <div class="form-group">
                  <!-- <label for="name">Name</label> -->
                  <input type="text" required class="form-control" placeholder="Name" name="name" id="name">
               </div>
               <div class="form-group">
                  <!--  <label for="email">Email:</label> -->
                  <input type="email" required class="form-control" name="email" placeholder="Email" id="email">
               </div>
               <div class="form-group">
                  <input type="subject" name="subject" class="form-control" placeholder="subject" id="subject">
               </div>
               <div class="form-group">
                  <textarea class="form-control" required name="comment" rows="5" placeholder="comment" id="comment"></textarea>
               </div>
               <button type="submit" name="submit" class="btnn btn-default">Submit</button>
               <?php echo $msg; ?>
            </form>
         </div>
      </div>
      <div class="col-lg-6" style="text-align: center;">
         <img src="./img/formpic.jpg">
      </div>
   </div>
</div>
<style>


</style>


<div class="container-fluid">
   <div class="row">
      <div class="teamtitle">
         <span class="teamhead">we are here</span>
      </div>
      <div class="addressflex">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d382.4371277579907!2d75.24119289417375!3d26.87422628005433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396c6eb19688f061%3A0xbde15ec369bbb40b!2sUCO%20Bank%20-%20Phulera%20Branch!5e0!3m2!1sen!2sin!4v1654606988163!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
   </div>
</div>


<!-- <div class="container">
   <div class="row">
      <div class="teamtitle">
         <span class="teamhead">Our Clients</span>
      </div>
      <div class="customer-logos" style="margin: 5% 0%">
         <div class="slide"><img src="./img/logos/1.png"></div>
         <div class="slide"><img src="./img/logos/2.png"></div>
         <div class="slide"><img src="./img/logos/3.png"></div>
         <div class="slide"><img src="./img/logos/4.png"></div>
         <div class="slide"><img src="./img/logos/5.png"></div>
         <div class="slide"><img src="./img/logos/6.png"></div>
         <div class="slide"><img src="./img/logos/7.png"></div>
         <div class="slide"><img src="./img/logos/8.png"></div>
         <div class="slide"><img src="./img/logos/9.png"></div>
         <div class="slide"><img src="./img/logos/10.png"></div>
         <div class="slide"><img src="./img/logos/11.png"></div>
         <div class="slide"><img src="./img/logos/12.png"></div>
      </div>
   </div>
</div> -->
<div class="counterpanel">
   <div class="container-fluid">
      <div class="row">
         <h5 style="color: red;font-size: 40px;text-align: center;font-weight: 800">Why Bharat Silai Machine ?</h5>
         <br>
         <div class="col-lg-1"></div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="case">0</h2>
               <br>
               <h4>Total Repairs</h4>
            </div>
         </div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="ENGINEERS">0</h2>
               <br>
               <h4>SUPPORT ENGINEERS</h4>
            </div>
         </div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="HOURS">0</h2>
               <br>
               <h4>WORKING HOURS</h4>
            </div>
         </div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="RESEARCH">0</h2>
               <br>
               <h4>RESEARCH</h4>
            </div>
         </div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="SATISFACTIONS">0</h2>
               <br>
               <h4>SATISFACTIONS</h4>
            </div>
         </div>
         <div class="col-lg-1"></div>
      </div>
   </div>
</div>

<?php include 'footer.php' ?>