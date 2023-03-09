<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <header>
        <h1>Resultado do envio</h1>
    </header>
    <main>
        <?php
            $name = $_GET["name"] ?? 'sem';
            $lastName = $_GET["lastName"] ?? 'nome';

            echo "<p>Olá! <strong>$name $lastName </strong>! Enviado!</p>";
        ?>
    <main>
    

    <p><a href="javascript:history.go(-1)">Voltar</a></p>

</body>
</html>
