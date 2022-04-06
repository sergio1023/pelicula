<?php 
$cookie = "no"; 
?>

<footer class="footer mt-auto py-3 bg-light">
  <div class="container">

  <?php if (isset($_POST['acepto']) || $_COOKIE['acepto'] == 'si' ) {?>
    <?php $cookie = "si"; ?>
    <b><h5>Has aceptado las cookies</h5></b>
    <?php }else { ?>
  <span class="text-muted">Debes aceptar nuestra política de cookies.</span>  
    <form action="." method="post">
      <input type="submit" name="acepto" value="Acepto">
    </form>
<?php } ?>
    
  <?php setcookie("acepto", $cookie); ?>
    
  </div>
</footer> 