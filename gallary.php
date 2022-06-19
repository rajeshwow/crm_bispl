<?php include 'header.php'?>
<?php include 'headernav.php'?>
<?php include 'nav.php'?>
<!-- <div class="product_heading">
<div class="container">
  <div class="row rowheight">
      <div class="col-lg-12" style="text-align: center;">
         <br><br>
         <h1>Airpro</h1>
         <h4>WI-FI NETWORKING PRODUCTS FOR HOME & BUSINESS</h4>
         <br><br>
      </div>
   </div>
   </div>
</div> -->
<div class="container-fluid">
<div class="row">
  <div class="col-lg-3 column">
    <img src="./img/gallary/onee.jpeg" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/two.jpeg" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/3.jpeg" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/4.jpeg" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
  </div>
</div>
<br>
<div class="row">
  <div class="col-lg-3 column">
    <img src="./img/gallary/five.jpeg" style="width:100%" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/6.jpeg" style="width:100%" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/7.jpeg" style="width:100%" onclick="openModal();currentSlide(7)" class="hover-shadow cursor">
  </div>
  <div class="col-lg-3 column">
    <img src="./img/gallary/8.jpeg" style="width:100%" onclick="openModal();currentSlide(8)" class="hover-shadow cursor">
  </div>
</div>
<br>

<br>
</div>

<div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()">Close &times;</span>
  <div class="modal-content">

    <div class="mySlides">
      <div class="numbertext">1 / 8</div>
      <img src="./img/gallary/onee.jpeg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">2 / 8</div>
      <img src="./img/gallary/two.jpeg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">3 / 8</div>
      <img src="./img/gallary/3.jpeg" style="width:100%">
    </div>
    
    <div class="mySlides">
      <div class="numbertext">4 / 8</div>
      <img src="./img/gallary/4.jpeg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">5 / 8</div>
      <img src="./img/gallary/five.jpeg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">6 / 8</div>
      <img src="./img/gallary/6.jpeg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">7 / 8</div>
      <img src="./img/gallary/7.jpeg" style="width:100%">
    </div>
    
    <div class="mySlides">
      <div class="numbertext">8 / 8</div>
      <img src="./img/gallary/8.jpeg" style="width:100%">
    </div>

    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <div class="caption-container">
      <p id="caption"></p>
    </div>


    <div class="column">
      <img class="demo cursor" src="./img/gallary/onee.jpeg" style="width:100%" onclick="currentSlide(1)" alt="Nature and sunrise">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/two.jpeg" style="width:100%" onclick="currentSlide(2)" alt="Snow">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/3.jpeg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/4.jpeg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
    </div>

    <div class="column">
      <img class="demo cursor" src="./img/gallary/five.jpeg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/6.jpeg" style="width:100%" onclick="currentSlide(6)" alt="Snow">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/7.jpeg" style="width:100%" onclick="currentSlide(7)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="./img/gallary/8.jpeg" style="width:100%" onclick="currentSlide(8)" alt="Northern Lights">
    </div>

  </div>
</div>

<?php include 'footer.php'?>