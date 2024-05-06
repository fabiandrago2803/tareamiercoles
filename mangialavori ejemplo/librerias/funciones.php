<?php

require_once('conexion.php');

function insertarRegistro()
{


//    echo 'Entro bien';

global $con;

$UserName= $_POST ['Uname'];
$UserApellido= $_POST ['Uapellido'];
$UserDni= $_POST ['Udni'];
$Userfecha= $_POST ['Ufechadenacimiento'];
$UserEmail= $_POST ['UEmail'];
$UserContrasena= $_POST ['Ucontrasena'];
$UserRepetir= $_POST ['Urepetir'];


$query= "insert into form_login (Nombre, Apellido, Dni, Nacimiento, Email, Contrasena, RepContras) values('$UserName', '$UserApellido', '$UserDni', '$UserEmail', str_to_date('$Userfecha', '%d/%m/%Y'), '$UserContrasena', '$UserRepetir')  ";

$result= mysqli_query($con,$query);

        if($result)
        {
            echo ' El registro se creo exitosamente';
        }
        else
        {
            echo 'Por favor chequear la Query';
        }




}





?>