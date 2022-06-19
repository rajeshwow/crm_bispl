$(document).ready(function(){
  $('#top').on("click",function(){
      // $(window).scrollTop(0);
      $('html, body').animate({
        scrollTop: 0
      }, 2000);
    });
   });

  var TxtRotate = function(el, toRotate, period) {
    this.toRotate = toRotate;
    this.el = el;
    this.loopNum = 0;
    this.period = parseInt(period, 10) || 1000;
    this.txt = '';
    this.tick();
    this.isDeleting = false;
  };

  TxtRotate.prototype.tick = function() {
    var i = this.loopNum % this.toRotate.length;
    var fullTxt = this.toRotate[i];

    if (this.isDeleting) {
      this.txt = fullTxt.substring(0, this.txt.length - 1);
    } else {
      this.txt = fullTxt.substring(0, this.txt.length + 1);
    }

    this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

    var that = this;
    var delta = 100 - Math.random() * 100;

    if (this.isDeleting) { delta /= 2; }

    if (!this.isDeleting && this.txt === fullTxt) {
      delta = this.period;
      this.isDeleting = true;
    } else if (this.isDeleting && this.txt === '') {
      this.isDeleting = false;
      this.loopNum++;
      delta = 500;
    }

    setTimeout(function() {
      that.tick();
    }, delta);
  };

  window.onload = function() {
    var elements = document.getElementsByClassName('txt-rotate');
    for (var i=0; i<elements.length; i++) {
      var toRotate = elements[i].getAttribute('data-rotate');
      var period = elements[i].getAttribute('data-period');
      if (toRotate) {
        new TxtRotate(elements[i], JSON.parse(toRotate), period);
      }
    }
  // INJECT CSS
  var css = document.createElement("style");
  css.type = "text/css";
  css.innerHTML = ".txt-rotate > .wrap { border-right: 0.08em solid #666 }";
  document.body.appendChild(css);
};












$(document).ready(function() {
 $(window).scroll(function (event) {
  var position = $(window).scrollTop();
  if (position>1500) {
    $("#top").css('visibility', 'visible');
  }
  else{
    $("#top").css('visibility', 'hidden');
  }

  if ((position>354)) {



    $("#card1").css('visibility', 'visible');
    $("#card1").addClass("animate__animated animate__fadeInDown animation-delay-100");
    $("#card2").css('visibility', 'visible');
    $("#card2").addClass("animate__animated animate__fadeInDown animation-delay-200");
    $("#card5").css('visibility', 'visible');
    $("#card5").addClass("animate__animated animate__fadeInDown animation-delay-200");
    $("#card4").css('visibility', 'visible');
    $("#card4").addClass("animate__animated animate__fadeInDown animation-delay-100");



  }

  if (position>1444) {
   $('#business_board').removeClass('hidden');
   $('#business_board').addClass('animated slideInLeft slow');
 }

 if (position>2980) {
   $('.bannertext').removeClass('hidden');
   $('.bannertext').addClass('animated slideInLeft slow');
 }

 if (position>3800) {

   $('.addressbox').removeClass('hidden');
   $('.addressbox').addClass('animated bounceInLeft');
   $('.lines').removeClass('hidden');
 }


});
});
$(document).ready(function() {
 $('#loading').fadeOut(2000);
});
$(".homebutton").click(function() {
 $('html, body').animate({
   scrollTop: $("#contact").offset().top
 }, 2000);
});
$({ countNum: $('.case').html() }).animate({ countNum: 127541 }, {
  duration: 15000,
  easing: 'linear',
  step: function () {
    $('.case').html(Math.floor(this.countNum) + "");
  },
  complete: function () {
    $('.case').html(this.countNum + "");
            //alert('finished');
          }
        });


$({ countNum: $('.ENGINEERS').html() }).animate({ countNum: 5 }, {
  duration: 8000,
  easing: 'linear',
  step: function () {
    $('.ENGINEERS').html(Math.floor(this.countNum) + "");
  },
  complete: function () {
    $('.ENGINEERS').html(this.countNum + "");
            //alert('finished');
          }
        });

$({ countNum: $('.HOURS').html() }).animate({ countNum: 131437 }, {
  duration: 20000,
  easing: 'linear',
  step: function () {
    $('.HOURS').html(Math.floor(this.countNum) + "");
  },
  complete: function () {
    $('.HOURS').html(this.countNum + "");
            //alert('finished');
          }
        });

$({ countNum: $('.RESEARCH').html() }).animate({ countNum: 91 }, {
  duration: 10000,
  easing: 'linear',
  step: function () {
    $('.RESEARCH').html(Math.floor(this.countNum) + "%");
  },
  complete: function () {
    $('.RESEARCH').html(this.countNum + "%");
            //alert('finished');
          }
        });

$({ countNum: $('.SATISFACTIONS').html() }).animate({ countNum: 99 }, {
  duration: 15000,
  easing: 'linear',
  step: function () {
    $('.SATISFACTIONS').html(Math.floor(this.countNum) + "%");
  },
  complete: function () {
    $('.SATISFACTIONS').html(this.countNum + "%");
            //alert('finished');
          }
        });


$(document).ready(function() {

  $(window).scroll(function() {
          // checks if window is scrolled more than 500px, adds/removes solid class
          if($(this).scrollTop() > 445) { 
            $('.navbar').addClass('solid');
            $('.navbar-brand').addClass('imagee');

          } else {
            $('.navbar').removeClass('solid');
            $('.navbar-brand').removeClass('imagee');
            
          }
        });
});


$(document).ready(function(){
  $('.customer-logos').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 1000,
    arrows: false,
    dots: false,
    pauseOnHover: false,
    responsive: [{
      breakpoint: 768,
      settings: {
        slidesToShow: 3
      }
    }, {
      breakpoint: 520,
      settings: {
        slidesToShow: 2
      }
    }]
  });
});

  // Lightbox

  function openModal() {
    document.getElementById("myModal").style.display = "block";
  }

  function closeModal() {
    document.getElementById("myModal").style.display = "none";
  }

  var slideIndex = 1;
  showSlides(slideIndex);

  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  function currentSlide(n) {
    showSlides(slideIndex = n);
  }

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");
    if (n > slides.length) {slideIndex = 1}
      if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
      }


      AOS.init();


      $(document).ready(function(){
  // Add smooth scrolling to all links
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 10000, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
});

      jQuery(document).ready(function() {
        jQuery('#loading').fadeOut(1000);
      });



      jQuery('.fadeinleft').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated bounceInUp',
        offset: 100
      });