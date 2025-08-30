<!DOCTYPE html>
<html>
<head>
    <title>Nuevo curso</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <h4>Agregar cursos</h4>
    <form method="post" action="<?= site_url('cursos/store') ?>">
        <div class="input-field">
            <input type="text" id="nombre" name="nombre" required>
            <label for="nombre">Nombre</label>
        </div>
        <div class="input-field">
            <input type="text" id="profesor" name="profesor" required>
            <label for="profesor">Profesor</label>
        </div>
        <div class="input-field">
            <input type="text" id="inactivo" name="inactivo">
            <label for="inactivo">Inactivo</label>
        </div>   
        <button class="btn waves-effect" type="submit">Guardar</button>
        <a class="btn-flat" href="<?= site_url('curosos') ?>">⬅️ Volver</a>
    </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
      document.addEventListener('DOMContentLoaded', function() { M.updateTextFields(); });
    </script>
</body>
</html>
