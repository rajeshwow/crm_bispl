
<!DOCTYPE html>
<html>
<head>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>

</head>
<body>

  <!-- <button>Send an HTTP GET request to a page and get the result back</button> -->

</body>
<script type='text/javascript'>
  $(document).ready(function(){
    $.ajax({
         url: "http://localhost:80",
         type: "GET",
         beforeSend: function(xhr){xhr.setRequestHeader('Access-Control-Allow-Origin', '*');},
         success: function(res) { alert('Success!' + res); }
      });
  });
</script>
</html>
