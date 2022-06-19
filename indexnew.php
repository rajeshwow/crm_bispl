<?php include 'header.php'?>
<?php include 'headernav.php'?>
<?php include 'nav.php'?>
<?php include 'config.php' ?>
<?php 
$msg = '';
if (isset($_POST['submit'])) {

 $name = mysqli_real_escape_string($conn,$_POST['name']);
 $email = mysqli_real_escape_string($conn,$_POST['email']);
 $subject = mysqli_real_escape_string($conn,$_POST['subject']);
 $comment = mysqli_real_escape_string($conn,$_POST['comment']);
 $headers = "From:".$email ;

 $sql = "INSERT INTO contact (name,email,subject,comment)
 VALUES ( '$name','$email', '$subject',' $comment')";
 mail("Info@BSM.net.in",$subject,$comment,$headers);

 if(!$result = $conn->query($sql)){
   die('There was an error running the query [' . $conn->error . ']');
}
$msg = 'Our team will contact you shortly.';

}
?>
<div id="loading"></div>
<style type="text/css">
</style>
<script type="text/javascript">function EJEJC_lc(th) { return false; }; </script>
<script src="https://www.fatfreecartpro.com/ecom/box_fb_n.js" type="text/javascript"></script>

<div class="container-fluid container-strech">
   <div class="row">
      <div class="col-lg-5">
         <div class="wrapper_carousel">
            <h1 class="dynamic_text">
               <span class="brnd" style="padding: 2%">BISPL</span>
               <span style="text-align: center;display: block;padding: 2%">one destination for </span>
               <span
               class="txt-rotate"
               data-period="1000"
               data-rotate='[ "Hardware Solutions.", "Networking Solutions.","Software Solutions.", "Website Development.", "App Development." ]'></span>
            </h1>
         </div>
      </div>
      <div class="col-lg-7">
         <div class="carousel">
            <div class="carousel__slides">
               <div class="carousel__slide">
                  <div class="carousel__slideBg"></div>
                  <div class="carousel__slideContent">
                    <!--  <span>Black Pearl</span> <span>Select</span>  -->
                    <a class="button" href="https://unsplash.com/@scoutthecity" target="/black">Know More</a>
                 </div>
              </div>
              <div class="carousel__slide">
               <div class="carousel__slideBg"></div>
               <div class="carousel__slideContent">
                 <!--  <span>Black Pearl</span> <span>Caribbean</span>  -->
                 <a class="button" href="https://unsplash.com/@madbyte" target="/black">Know More</a> 
              </div>
           </div>
           <div class="carousel__slide">
            <div class="carousel__slideBg"></div>
            <div class="carousel__slideContent">
              <!--  <span>Black Pearl</span> <span>Dark</span>  -->
              <a class="button" href="https://unsplash.com/@maicoamorim" target="/black">Know More</a> 
           </div>
        </div>
        <div class="carousel__slide">
         <div class="carousel__slideBg"></div>
         <div class="carousel__slideContent">
            <!-- <span>Black Pearl</span> <span>Select</span> --> 
            <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> 
         </div>
      </div>
      <div class="carousel__slide">
         <div class="carousel__slideBg"></div>
         <div class="carousel__slideContent">
            <!-- <span>Black Pearl</span> <span>Select</span> --> 
            <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> 
         </div>
      </div>
      <div class="carousel__slide">
         <div class="carousel__slideBg"></div>
         <div class="carousel__slideContent">
            <!-- <span>Black Pearl</span> <span>Select</span> --> 
            <a class="button" href="https://unsplash.com/@mariocalvo" target="/black">Know More</a> 
         </div>
      </div>
   </div>
   <div class="carousel__shutters"></div>
</div>
</div>
</div>
<div class="svgdiv">
   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 230" style="margin-top: -100px;position: relative;bottom: 0">
      <path fill="#F2F3F4" fill-opacity="1" d="M0,96L60,85.3C120,75,240,53,360,85.3C480,117,600,203,720,224C840,245,960,203,1080,160C1200,117,1320,75,1380,53.3L1440,32L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"> 
      </path>
   </svg>
</div>
</div>
<div class="servicepanel " id="servicepanel" >
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
               <!--  </div> -->
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
</div>

<style type="text/css">
</style>
<div class="container-fluid wrapper_partner">
   <div class="row">
      <div class="col-lg-12" style="text-align: center;">
         <div class="teamtitle">
            <span class="teamhead">our partners</span>
         </div>
      </div>
   </div>
   
   <div class="partnerbox">
      <div class="row" style="margin: 2% 0%" >
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     AirPro Technology LTD.</h5>
                     <img src="./img/airpro_logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">AirPro</h4>
                     <h4 >Wifi networking  products for home &  Business.</h4>
                     <button type="button" onclick="location.href = '#';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     Molex Electronic Solutions</h5>
                     <img src="./img/molex_logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Molex</h4>
                     <h4 >A leading Suppliers of connectors and componants.</h4>
                     <button type="button" type="button" onclick="location.href = '#';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     NetRack Enclosures Private Ltd.</h5>
                     <img src="./img/netrack_logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">NetRack</h4>
                     <h4 >Server Network Rack Encolusers and network Cabinet</h4>
                     <button type="button" type="button" onclick="location.href = '#';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     Fortinet cybersecurity company</h5>
                     <img src="./img/fortinet_logo-1.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Fortinet</h4>
                     <h4 >Leader in Next Generation Firewalls endpoint security</h4>
                     <button type="button" type="button" onclick="location.href = '#'" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="row" style="margin: 5% 0%">

         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     atvi computech Pvt. Ltd.</h5>
                     <img src="./img/atvi_logo-1.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">atvi</h4>
                     <h4 >Innovative interactive board. thin client solution.</h4>
                     <button type="button" type="button" onclick="location.href = '#';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     Asustor</h5>
                     <img src="./img/asustor-logo-origional1.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Asustor</h4>
                     <h4 >A leading innovator and provider of network attached storage (NAS).</h4>
                     <button type="button" type="button" onclick="location.href = '';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     Benq India Pvt. Ltd.</h5>
                     <img src="./img/benq_logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">Benq</h4>
                     <h4 >No. 1 DLP projector Brand delivering world class Performance.</h4>
                     <button type="button" type="button" onclick="location.href = '#';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="flip-card">
               <div class="flip-card-inner">
                  <div class="flip-card-front">
                     <h5 style="padding: 5% 0%">
                     LG LTD.</h5>
                     <img src="./img/lg-logo.png">
                  </div>
                  <div class="flip-card-back">
                     <h4 style="padding-top: 5%">LG</h4>
                     <h4 >LG's innovative range of Smartphones, TVs, Home Entertainment Systems</h4>
                     <button type="button" type="button" onclick="location.href = '';" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="row" style="margin: 5% 0%">
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
                     <h4 >NComputing manufactures hardware and software to create virtual desktops</h4>
                     <button type="button" class="btn product_button" >Learn More</button>
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
                     <h4 >It provides an intuitive solution that filters unwanted software/malware from user-initiated Web/Internet traffic</h4>
                     <button type="button" class="btn product_button" >Learn More</button>
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
                     <h4 >Delta provides complete power solutions for mission critical infrastructure, data centers & telecom providers across the globe.</h4>
                     <button type="button" class="btn product_button" >Learn More</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <br>

</div>
<style type="text/css">
   .boxes{
      box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
      margin: 2% 2%;
      background-color: white;
   }
   .sliderss1{
      height: 100%;
      width: 20px;
      border: 1px solid gray;
      position: absolute;
      top: 0%;display: block;
      right: 1.5%;
      background-color: white;
   }
   .sliderss2{
      height: 100%;
      width: 8px;
      z-index: 1;display: block;
      border-left: 1px solid black;
      position: absolute;
      top: 0%;
      right: 2%;
      background-color: white;
   }
   .sliderss3{
      height: 100%;
      width: 10px;display: block;
      border-left: 1px solid black;
      position: absolute;
      top: 0%;
      right: 1%;
      background-color: white;
   }
   .testcard{
    height: auto;
    box-shadow: 0px 0px 21px -8px rgb(115 109 115 / 67%);
    background: white;
    margin: 3% 0;
    border-radius: 5px;
 }
 .testsign{
   margin: 5% 0;
   font-size: 25px;
   padding: 5%;
   color: #0099ff;
}
.testdesc{
  padding: 0 5%;
  min-height: 170px;  
}
.testbottomdesc{

 color: white;
 text-transform: uppercase;
 font-size: 20px;
 text-align: center;
 padding: 5%;
 margin-top: -10px;
}
.sign1 {
   color: #0099ff;
}
.bottomdesc1{
   background: #0099ff;
}
.sign2{
   color: crimson;
}
.bottomdesc2{
   background: crimson;
}
.sign3{
   color:darkorange;
}
.bottomdesc3{
   background: darkorange;
}


</style>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 180"><path fill="#F2F3F4" fill-opacity="1" d="M0,160L80,133.3C160,107,320,53,480,58.7C640,64,800,128,960,138.7C1120,149,1280,107,1360,85.3L1440,64L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
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
                  <span>I will give 5 Star to BIS . When we were stuck with some security issues, they had helped us by developing their Firewall concept with structured cabling. Till then issues are drastically came down.</span>
               </div>

               <div class="testbottom " >
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#0099ff" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>
                  <div class="testbottomdesc bottomdesc1">
                    <h4> <b>JAMES CARDOZO</b></h4>
                    <h5>CEO</h5>
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
               <span>BIS quickly became an essential part of our IT Division. Their research & knowledge really very helped us to build a server network within time frame .</span>
            </div>

            <div class="testbottom">
               <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="crimson" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>
               <div class="testbottomdesc bottomdesc2">
                  <h4><b>SEEMA JHAWAR</b></h4>
                  <h5>Manging Director</h5>
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
               <span>Its Awesome working with BISPL.We have been working with BISPL for over the past year and half and I truly mean it when I say that no other company could surpass them in customer service.</span>
            </div>

            <div class="testbottom">
               <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="darkorange" fill-opacity="1" d="M0,192L60,170.7C120,149,240,107,360,85.3C480,64,600,64,720,74.7C840,85,960,107,1080,106.7C1200,107,1320,85,1380,74.7L1440,64L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>
               <div class="testbottomdesc bottomdesc3">
                  <h4><b>Pawan K.</b></h4>
                  <h5>Team  Lead </h5>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
<style>
   .newcontact{
      position: relative;
   }
   .newcontact:before {
    content: '';
    position: absolute;
    background: rgba(0, 0, 0, 0.5);
    border-radius: 5px;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
 }
 .overlay_part{
   position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  display: flex;
  align-items: center;
  justify-content: center;
 }
 .contact_item{
   width: 50%;
 }
</style>
<section class="newcontact">
   <video width="100%" height="auto" autoplay muted>
     <source src="./img/Office Background 2.mp4" type="video/mp4">
   </video>
   <div class="overlay_part">
      <div class="text_part contact_item">
         <ul>
            <li>fffff</li>
            <li>fffff</li>
            <li>fffff</li>
         </ul>
      </div>
      <div class="formpart contact_item">
         <div class="innerform">
            
            <form action="" class="innerform_inputs" method="POST">
               <div class="form-group">
                  <label for="name">Send us Message</label>
                  
               </div>
               <div class="form-group">
                  <!-- <label for="name">Name</label> -->
                  <input type="text"  required class="form-control" placeholder="Name" name="name" id="name">
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
               <?php echo $msg;?>
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
                  <input type="text"  required class="form-control" placeholder="Name" name="name" id="name">
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
               <?php echo $msg;?>
            </form>
         </div>
      </div>
      <div class="col-lg-6" style="text-align: center;">
         <img src="./img/formpic.jpg" >
      </div>
   </div>
</div>
<style>
   .text-block {
    position: absolute;
    bottom: 0px;
    right: 0px;
    top:0;
    left:0;
    background-color: rgb(0,0,0,0.6);
    color: white;
    padding: 5%;
 }
 .office_wrapper{
   position: relative;
   flex-basis: 100%;
   overflow: hidden;
   transition: transform .2s;
}
.office_wrapper:hover .office_pic{
   transform:scale(2);
   
}
.office_pic >img{
   height: 200px;
}
.addressflex{
   display: flex;
   flex-direction: row;
}

</style>


<div class="container-fluid">
   <div class="row" >
      <div class="teamtitle">
         <span class="teamhead">we are here</span>
      </div>
      <div class="addressflex">
         <div class="office_wrapper">
            <div class="office_pic">
               <img src="https://st2.depositphotos.com/1000528/7757/i/600/depositphotos_77574658-stock-photo-hawa-mahal-palace-of-the.jpg" alt="Nature" style="width:100%;">
            </div>
            
            <div class="text-block">
             <div class="addressbox   delay-1">
               <p><span class="icon"><i class="fas fa-landmark"></i></span> <span class="icontext">43 - Jai Ambay Colony,Opposite metro piller no. 72,Civil Lines,302006 Jaipur – Rajasthan</span></p>
               <p><span class="icon"><i class="fas fa-phone-alt"></i></span> <span class="icontext">0141-2229998 / 9351990050</span> </p>
               <p><span class="icon"><i class="fas fa-envelope-square"></i></span> <span class="icontext">info@bispl.net.in</span> </p>
            </div>
         </div>
      </div>
      <div class="office_wrapper">
         <div class="office_pic">
            <img src="https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1032564349_20200220102557_20200220102634.jpg" alt="Nature" style="width:100%;">
         </div>

         <div class="text-block">
          <div class="addressbox  delay-2">
            <p><span class="icon"><i class="fas fa-landmark"></i></span> <span class="icontext">11-Shiv Mangal Nagar Near Lala Ram Nagar Indore – Madhya Pradesh</span> </p>
            <p><span class="icon"><i class="fas fa-phone-alt"></i></span> <span class="icontext">+91-7312499930 / +91-8370073737 </span> </p>
            <p><span class="icon"><i class="fas fa-envelope-square"></i></span> <span class="icontext">info@bispl.net.in</span> </p>
         </div>
      </div>
   </div>
   <div class="office_wrapper">
      <div class="office_pic">
         <img src="https://i.pinimg.com/originals/1b/b2/2a/1bb22a7ebbd0bb1fd7321bf214d85d91.jpg" alt="Nature" style="width:100%;">

      </div>
      <div class="text-block">
       <div class="addressbox  delay-3">
         <p><span class="icon"><i class="fas fa-landmark"></i></span> <span class="icontext">P-50 Princep Street 1st Floor Kolkata –West Bangal 700072</span> </p>
         <p><span class="icon"><i class="fas fa-phone-alt"></i></span> <span class="icontext">033-40056507 / +91-9643556026 </span> </p>
         <p><span class="icon"><i class="fas fa-envelope-square"></i></span> <span class="icontext">info@bispl.net.in</span> </p>
      </div>
   </div>
</div>
<div class="office_wrapper">
   <div class="office_pic">
      <img src="https://media.istockphoto.com/photos/dlf-cyber-city-picture-id1191884210?k=6&m=1191884210&s=612x612&w=0&h=5JJbZNylhJmjZoeyQFwdgpuhvmZM8Pqy4K9VTDoU5Xs=" alt="Nature" style="width:100%;">

   </div>
   <div class="text-block">
    <div class="addressbox  delay-4">
      <p><span class="icon"><i class="fas fa-landmark"></i></span> <span class="icontext">B2-1104, Tulip Orange Sec-69 26A Jandli Ambala City, Gurgaon</span> </p>
      <p><span class="icon"><i class="fas fa-phone-alt"></i></span> <span class="icontext">01414030915 / +91-9649999968 </span> </p>
      <p><span class="icon"><i class="fas fa-envelope-square"></i></span> <span class="icontext">info@bispl.net.in</span> </p>
   </div>
</div>
</div>
</div>
</div>
</div>


<div class="container">
   <div class="row">
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
</div>
<div class="counterpanel">
   <div class="container-fluid">
      <div class="row">
         <h5 style="color: red;font-size: 40px;text-align: center;font-weight: 800">Why Binary ?</h5>
         <br>
         <div class="col-lg-1"></div>
         <div class="col-lg-2">
            <div class="item-animate">
               <h2 class="case">0</h2>
               <br>
               <h4>CASE SOLVED</h4>
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

<?php include 'footer.php'?>