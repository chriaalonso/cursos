<?php

include 'functions.php';

$contas = [
    123 => [
        'titular' => 'Christian',
        'saldo' => '1000'
    ],
    456 => [
        'titular' => 'João',
        'saldo' => '2000'
    ],
    789 => [
        'titular' => 'Pedro',
        'saldo' => '3000'
    ]
];

$contas[987] = [
    'titular' => 'Jose',
    'saldo' => '4000'
];

$contas['123'] = sacar($contas['123'], 100);
$contas['456'] = sacar($contas['456'], 250);
$contas['456'] = depositar($contas['456'], 1050);

unset($contas['987']);

uppercaseName($contas['123']);

// for($i = 0; $i < count($contas); $i++) {
//     echo $contas[$i]['titular'] . PHP_EOL;
// }

// echo "<ul>";
// foreach($contas as $cpf => $conta) {
//    //  msg("$cpf {$conta['titular']} {$conta['saldo']}");
//     exibeConta($conta);
// }
// echo "</ul>";

// $teste = [
//     10 => 'a',
//     '2' => 'b',
//     3.5 => 'c',
//     true => 'd'
// ];

// foreach($teste as $item) {
//     echo $item . PHP_EOL;
// }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Contas correntes</h1>
    <dl>
        <?php foreach($contas as $cpf => $conta) { ?>
            <dt><h3><?php echo $conta['titular']; ?> - <?php echo $cpf; ?></h3></dt>
            <dt><h3>Saldo: <?php echo $conta['saldo']; ?></h3></dt>
        <?php } ?>
    </dl>
</body>
</html>
