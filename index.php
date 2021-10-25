<?php include 'config.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<style type="text/css">

p{color: #666666}
.right-part{
  background: none;
}
</style>
<div class="right-part">
   <div class="container-fluid">
      <div class="row" style="padding: 0% 0%;">
         <div class="col-lg-5">
            <div class="contentts">
               <span class="tytl">
               Customized CRM to increase Productivity.
               </span><br>
               <span class="despp">
                   <ul>
                       <li><span class="glyph"><i class="fas fa-check"></i></span> Maintain Renewals</li>
                       <li><span class="glyph"><i class="fas fa-check"></i></span> Send Emails</li>
                       <li><span class="glyph"><i class="fas fa-check"></i></span> Manage Users</li>
                       <li><span class="glyph"><i class="fas fa-check"></i></span> Manage Funnel</li>
                   </ul>
               </span>
               <br>
               <?php if (!isset($_SESSION['email'])) { ?>
               <button onclick="location.href='./crm_userlogin.php'" class="btn getstartedbtn">Get Started</button>
               <?php }?>
            </div>
         </div>
         <div class="col-lg-7" style="text-align: center;overflow: hidden;">
            <img class="imgbanner" src="./img/ind.gif">
         </div>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 220">
          <path fill="white" fill-opacity="1" d="M0,128L60,122.7C120,117,240,107,360,117.3C480,128,600,160,720,154.7C840,149,960,107,1080,96C1200,85,1320,107,1380,117.3L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
        </svg>
      </div>
      <div class="row" style="background-color: white;margin-top: -5px">
          <div class="col-lg-12">
            <div class="whycrm" style="text-align: center;">
                <h3>Why CRM?</h3>
              <p>Close more deals than ever, automatice lead captures,in-built phone,smart alerts with push notifcations.</p>
            </div>
            <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Customized Dashboard</a></li>
            <li><a data-toggle="tab" href="#menu1">Tally Integration</a></li>
            <li><a data-toggle="tab" href="#menu2">Funnel & Suspense track</a></li>
            <!-- <li><a data-toggle="tab" href="#menu2">Menu 3</a></li> -->
          </ul>
            <div class="tab-content">
                <div id="home" class="tab-pane fade in active" >
                  <div class="container-fluid">
                  <div class="row rowstyle">
                      <div class="col-lg-5" style="text-align: right;">
                          <h3 class="navpillstitle">Get everything on a single click </h3>
                          <p>The rise of innovative, interactive, data-driven dashboard tools has made creating effective dashboards – like the one featured above – swift, simple, and accessible to today’s forward-thinking businesses. Enter the world of dashboard design and its principles.</p>
                      </div>
                      <div class="col-lg-7">
                          <img src="./img/mockups.png" style="width: 100%">
                      </div>
                  </div>
                </div>
                </div>
                <div id="menu1" class="tab-pane fade">
                  <div class="container-fluid">
                  <div class="row rowstyle">
                      <div class="col-lg-5" style="text-align: right;">
                          <h3 class="navpillstitle">Integrated Tally ERP 9 with CRM.</h3>
                          <p>Large and medium sized businesses use different applications to run their business and one of the major areas that need to be addressed amongst these applications is the Accounting, Financial and Inventory information. Tally is the most commonly used Accounting, Inventory and Statutory Compliance software by enterprises in these segments. Major companies and business houses use Tally for their financial accounting needs.</p>
                      </div>
                      <div class="col-lg-7">
                          <img src="./img/tallynew.png" style="width: 100%;">
                      </div>
                  </div>
                </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                  <div class="container-fluid">
                  <div class="row rowstyle">
                      <div class="col-lg-5" style="text-align: right;">
                          <h3 class="navpillstitle">Update Funnel & get reports. </h3>
                          <p>A conversion funnel, also known as a sales or marketing funnel, describes the process you create to attract potential buyers to your website and guide them to take some desired action. The actions can range from signing up for your email list to buying your products and services.</p>
                      </div>
                      <div class="col-lg-7">
                          <img src="./img/funnelnew.png" style="width: 100%">
                      </div>
                  </div>
                </div>
                </div>
          </div>
                  </div>
    </div>
  

   </div>
</div>


<?php include 'footer.php'; ?>