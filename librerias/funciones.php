<?php

require_once('conexion.php');

function insertarRegistro()
{
//echo 'Entro bien';
global $con;
$UserName= $_POST['UName'];

$query= "Insert Into basedatostarea.sql (nombre,apellido,dni,f_nacimiento,genero,email,password,password2) values('$UserName'), " 



}
    



?>
