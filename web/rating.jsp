<!DOCTYPE html>  
<html lang = "en">  
    <head>  
        <meta charset = "UTF-8">  
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">  
        <!-- Bootstrap and jQuery CDN -->  
        <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css">  
        <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>  
        <script src = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
        <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
        <title> jQuery simple star rating example </title>  
        <style>
            
            .fa-star {
                font-size : 50px;
                align-content : center;
            }
            .container {
                height : 100px;
                width : 600px;
                margin : auto;
            }
        </style> 
        
    </head>  
    <body>  
        <div class = "container">  
            
            <div class = "con">  
                
                <i class = "fa fa-star" aria-hidden = "true" id = "st1"></i>  
                <i class = "fa fa-star" aria-hidden = "true" id = "st2"></i>  
                <i class = "fa fa-star" aria-hidden = "true" id = "st3"></i>  
                <i class = "fa fa-star" aria-hidden = "true" id = "st4"></i>  
                <i class = "fa fa-star" aria-hidden = "true" id = "st5"></i>  
            </div>  
        </div>  
        <!-- jQuery star rating with hover script -->  
        <script>
    $(document).ready(function () {
        $("#st1").hover(function () {
            $(".fa-star").css("color", "black");
            $("#st1").css("color", "yellow");

        });
        $("#st2").hover(function () {
            $(".fa-star").css("color", "black");
            $("#st1, #st2").css("color", "yellow");

        });
        $("#st3").hover(function () {
            $(".fa-star").css("color", "black")
            $("#st1, #st2, #st3").css("color", "yellow");

        });
        $("#st4").hover(function () {
            $(".fa-star").css("color", "black");
            $("#st1, #st2, #st3, #st4").css("color", "yellow");

        });
        $("#st5").hover(function () {
            $(".fa-star").css("color", "black");
            $("#st1, #st2, #st3, #st4, #st5").css("color", "yellow");

        });
    });
        </script>  
        <script>
            $(document).ready(function() {  
          $("#st1").hover(function() {  
              $(".fa-star").css("color", "black");  
              $("#st1").css("color", "yellow");  
  
          });  
        </script>
    </body>  
</html>  