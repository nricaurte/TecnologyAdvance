<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tecnology Advance</title>
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="/TecnologyAdvance/css/css/bootstrap.css">
      <link rel="stylesheet" href="/TecnologyAdvance/css/css/estilos.css">
      <link rel="stylesheet" href="/TecnologyAdvance/css/css/font.css">
      <link rel="stylesheet" href="/TecnologyAdvance/css/css/estil.css">
        <link rel="stylesheet" type="text/css" href="/TecnologyAdvance/css/estilos.css">
   <script type="text/javascript" src="/TecnologyAdvance/js/jquery-1.11.2.min.js"></script>

</head>
<body>
 <header >
  <div class="tabbable">
   <nav id="header" class="navbar navbar-default navbar-fixed-top" role="navigation"><span id="raya"></span>
  <div  class="container">

    <div id="menu-header" class="navbar-header">
      <button type="button"  class="navbar-toggle collapsed margen" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon icon-list2" ></span>
      </button>
      <a class="navbar-brand margen_mithir" href="#" >Tecnology Advance</a>
    </div>
      
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul id="menu-body" class="nav navbar-nav navbar-right">
        <li class="active"><a href="/TecnologyAdvance/index.php/inicio">Inicio<span class="sr-only">(current)</span></a></li>
        <li><a href="/TecnologyAdvance/index.php/aboutus">Acerca de</a></li>
        <li><a href="/TecnologyAdvance/index.php/contacto">Contacto</a></li>
       
        <li><a href="/TecnologyAdvance/index.php/login">Sign in</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  </div>
</nav>
 </header> 
 <br>
 <br>
 <br>
 <br>
  <br>
 <section>
<div class="container">
<div class="row">
    <div class="col-md-12">    
          <div class="main">
            <div class="slides">
              <img class="img-responsive " src="/TecnologyAdvance/img/img1.jpg" alt="">
              <img class="img-responsive "  src="/TecnologyAdvance/img/img2.jpg"alt="">
              <img class="img-responsive "  src="/TecnologyAdvance/img/img6.jpg" alt="">
              <img class="img-responsive "  src="/TecnologyAdvance/img/img5.jpg" alt="">
            </div>
          </div>
    </div> 
</div>
</div>
 </section>
   <div id="social-bar">
        <ul>
            <li><a href="#" target="_blank"  class="icon-facebook"><span></span></a></li>
            <li><a href="#" target="_blank"  class="icon-twitter"><span></span></a></li>
            <li><a href="#" target="_blank"  class="icon-googleplus"><span></span></a></li>
            <li><a href="#" target="_blank"  class="icon-instagram"><span></span></a></li>
            <li><a href="#"  target="_blank" class="icon-pinterest"><span></span></a></li>
        </ul>
    </div>


<article>
  <section id="info-header">
    <div class="container">
      <div class="row">
    <?php  echo $contenido ?>
    </div>
   </div>
  </section>
</article>
 <footer class="panel-footer color1"> 
       
            <div class="container text-left">
                <div class="row"> 
                <h4>Tecnology Advance</h4>
                        <hr>
             <div class="col-xs-12 col-sm-6 col-md-6">
            <h4 class="text-left">FOLLOW ME</h4>
            <a href="http://www.youtube.com/"class="btn btn-circle btn-circle-facebook "><i class="icon icon-facebook "></i></a>
            <a class="btn btn-circle btn-circle-twitter"><i class="icon icon-twitter"></i></a>
            <a class="btn btn-circle btn-circle-googleplus"><i class="icon icon-googleplus"></i></a> 
            <a class="btn btn-circle btn-circle-pinterest"><i class="icon icon-pinterest"></i></a> 
            <p class="color1">Copyright &copy 2015 Tecnology Advance</p>
                </div>      
                 <div class="col-xs-12 col-sm-6 col-md-6">
                        <a href="/TecnologyAdvance/index.php/aboutus">About us</a> |
                        <a href="/TecnologyAdvance/index.php/contacto">Contacto</a>|
                        <a href="">Noticias</a>|
                        <a href="">Ayuda</a>
                </div>  
            </div>
            </div>

</footer>

  <script type="text/javascript" src="/TecnologyAdvance/js/jquery.slides.js"></script>  
  <script type="text/javascript" src="/TecnologyAdvance/js/bootstrap.min.js"></script>
  <script>
 
  $(function(){
  $(".slides").slidesjs({
    play: {
      active: true,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      effect: "slide",
        // [string] Can be either "slide" or "fade".
      interval: 5000,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: true,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: false,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 2500
        // [number] restart delay on inactive slideshow
    }
  });
});
 
  </script>
</body>
</html>