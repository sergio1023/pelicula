<?php
include('acceso_datos.php');

$datos = $conexion_bd->query('SELECT * FROM peliculas');

?>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Cartelera de cine</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sticky-footer-navbar/">

  
<link href="/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">

    <?php include('include_menu.php')?>


<!-- Begin page content -->
<main class="flex-shrink-0">
  <div class="container">
  <h1>Próximas Películas</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Duración</th>
                    <th>Descripción</th>
                    <th>Carátula</th>
                    <th>Tráiler</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($datos as $fila) { ?>
                <tr>
                    <td><?=$fila['id']?></td>
                    <td><?=$fila['titulo']?></td>
                    <td><?=$fila['duracion']?></td>
                    <td><?=$fila['descripcion']?></td>
                    <td><a href="<?=$fila['caratula']?>"><?=$fila['titulo']?></a></td>
                    <td><a href="<?=$fila['trailer']?>">Click para ver el tráiler</a></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
  </div>
</main>

  <?php include('include_mostrar_cookies.php')?> 

    <script src="/js/bootstrap.min.js"></script>
      </body>
</html>