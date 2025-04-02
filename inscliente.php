<?php

@session_start();
include('conexao.php');


$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$telefone = $_POST['telefone'];



//insert into nometabela (nomes das tabelas do bd)
$sql = "INSERT INTO tblcliente (nome,cpf,email,senha,telefone) values ('$nome', '$cpf', '$email', '$senha', '$telefone')";

$qry = mysqli_query($con,$sql);

if($qry){
    echo "Cadastrado com sucesso";
    echo "<a href='menu.php'>Continuar</a> - <a href='cadcliente.php'>Voltar</a>";
}

else{
    echo "Não Cadastrado<br>";
    echo "Informe ao ADM - <a href='cadcliente.php'>Voltar</a>";
}
