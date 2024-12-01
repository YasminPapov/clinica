<?php

include('config.php');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nome = $conn->real_escape_string($_POST['nome']);
    $email = $conn->real_escape_string($_POST['email']);
    $senha_hash = password_hash($_POST['senha'], PASSWORD_DEFAULT);
    $nivel_acesso = $conn->real_escape_string($_POST['nivel_acesso']);


    $sql = "INSERT INTO usuarios (nome, email, senha_hash, nivel_acesso) VALUES ('$nome', '$email', '$senha_hash', '$nivel_acesso')";

    if ($conn->query($sql) === TRUE) {
        echo "Usuário cadastrado com sucesso!";
    } else {
        echo "Erro: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
</head>
<body>
    <h2>Cadastro de Usuário</h2>
    <form action="cadastro.php" method="POST">
        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="senha">Senha:</label><br>
        <input type="password" id="senha" name="senha" required><br><br>

        <label for="nivel_acesso">Nível de Acesso:</label><br>
          <select id="nivel_acesso" name="nivel_acesso" required>
        <option value="aluno">Aluno</option>
        <option value="professor">Professor</option>
          </select><br><br>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
