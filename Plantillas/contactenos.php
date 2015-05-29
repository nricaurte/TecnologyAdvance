<?php ob_start(); ?>
<section >
<div class="container">
<div class="row"> 
<div class="col-md-6 col-xs-12 col-sm-6 col-lg-6 ">
      <div class="panel panel-default" >
          <div class="panel-heading">
            <div class="panel-title"><h5>Contactenos</h5></div> 
                </div>
            <div class="panel-body">
               <form  name="formato" action="" method="post">
                     <div class="form-group">
                   <label>Nombre*</label>
                 <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre"  required>
                        <label>Email*</label>
                 <input type="text" class="form-control" name="nombre" id="email" placeholder="Email" required>
                        <label>Asunto*</label>
                 <input type="text" class="form-control" name="nombre" id="asunto" placeholder="Asunto" required>
                        <label>Mensaje*</label>
                 <textarea class="form-control" rows="3" name="mensaje" id="mensaje" placeholder="Mensaje" required></textarea>
                 <hr >  
                            <div class="modal-footer">
      <center><button type="submit" class="btn btn-primary" id="enviar" data-dismiss="modal"><span class="icon icon-checkmark-circle"></span> Enviar Email</button>
      
      <button type="submit" class="btn btn-danger" data-dismiss="modal"><span class="icon icon-close"></span> Cancelar</button></center>
   
    </div>    
                   </div>
               </form> 
      
        </div>


 
 </div>
</div>
<div class="col-md-6 col-xs-12 col-sm-6 col-lg-6 ">
   <div class="thumbnail">
          <div class="caption">
             <div class="media-body">
                  <h4 class="media-heading text-justify">Direccion:</h4>
                  <p>Calle 11 #11-34 centro</p>
                   <h4 class="media-heading text-justify">Telefono:</h4>
                  <p>8673326</p>
                   <h4 class="media-heading text-justify">Celular:</h4>
                  <p>3125565656</p>
                  <h4 class="media-heading text-justify">E-mail:</h4>
                  <p>tecnologyadvance@hotmail.com</p>
             </div>
             <br>
               <br>
                 <br>
         
          </div>
     </div>
</div>

</div>
<script src="/fajasrosywar/js/mensaje.js"></script>   
<?php $contenido=ob_get_clean();
require "base5.php";
 ?>