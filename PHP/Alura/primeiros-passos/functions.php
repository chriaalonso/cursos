<?php

require_once 'functions.php';

function sacar(array $conta, float $valorSaque) : array {
    if($valorSaque > $conta['saldo']) {
        msg("Você não pode sacar");
    } else {
        $conta['saldo'] -= $valorSaque;
    }
    return $conta;
}

function depositar($conta, float$valorDeposito) : array {
    if($valorDeposito > 0) {
        $conta['saldo'] += $valorDeposito;
    } else {
        msg('Valor de depósito tem de ser maior que 0(zero)');
    }
    return $conta;
}

function msg($msg) {
    echo $msg . '<br>';
}

function uppercaseName(array &$conta) {
    $conta['titular'] = strtoupper($conta['titular']);
}

function exibeConta(array $conta) {
    ['titular' => $titular, 'saldo' => $saldo] = $conta;
    echo "<li>Titular: $titular . Saldo: $saldo</li>";
}