<?php
$host = "localhost";  // Host do banco de dados
$usuario = "root";    // Usuário do banco de dados
$senha = "";          // Senha do banco (geralmente vazio no XAMPP)
$banco = "clinica"; // Substitua pelo nome do seu banco de dados

// Criando a conexão
$con = new mysqli($host, $usuario, $senha, $banco);

// Verificando a conexão
if ($con->connect_error) {
    die("Erro na conexão: " . $con->connect_error);
}
?>
