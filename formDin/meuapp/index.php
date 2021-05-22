<?php
include('../base/classes/webform/TApplication.class.php');
// se estiver utilzando um diretório base único utilizar

//assim: include('../base/classes/webform/TApplication.class.php');

$app = new TApplication(); // criar uma instância do objeto
//aplicação
$app->setTitle('Aplicação Exemplo Utilizando FormDin');
$app->setSigla('SISEXEMPLO');
$app->setUnit('Departamento de Informática – DI – 2011');
$app->setLoginInfo('Bem-vindo');

$app->setMainMenuFile('includes/menu.php');
$app->run();

