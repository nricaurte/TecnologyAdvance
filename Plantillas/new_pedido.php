<?php   ob_start();?>
  <div class="row">
<div class="panel panel-default">
  <div class="panel-heading"><div class="panel-title">
  Digite Producto para Almacenar
</div>
  </div>
<div class="panel-body">

     <form role="form" method="post"  action="consultar_user">     
        
        <div class="form-group">
     
   
          <select name="cod_pro" class="form-control input-sm" id="cc_codigo">
                          <?php foreach ($producto_base2 as $productos) { ?>
  <option value='<?php echo $productos['id_producto']; ?>'><?php echo $productos['id_producto']." - ".$productos['nombre']; ?></option>
                                        <?php } ?>
              </select>  
     </div>
  
    <div class="form-group">
          <label >Cantidad</label>
          <input type="txt" class="form-control" id="Cantidad" name="Cantidad" placeholder="Cantidad">
        </div>


</form>
</div>
 </div></div>
<?php
$contenido = ob_get_clean();
if($_SESSION['rol']=="Cajero"){
require 'base3.php';}
else { require 'base2.php'; }
?>


