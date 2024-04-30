<?php

require_once('conexion.php');

function insertarRegistro()
{
//echo 'Entro bien';
global $con;
$UserNombre= $_POST['UNombre'];
$UserApellido= $_POST['UApellido'];
$UserDni= $_POST['UDni'];
$UserFecha= $_POST['UF_nacimiento'];
$UserGenero= $_POST['UGenero'];
$UserEmail= $_POST['UEmail'];
$UserPassword= $_POST['UPassword'];
$UserPassword2= $_POST['UPassword2'];


$query= "Insert Into basedatostarea.sql (nombre, apellido, dni, f_nacimiento, genero, email, password, password2) values('$UserNombre', '$UserApellido', '$UserDni', str_to_date('$UserFecha', '%d/%m/%Y'), '$UserGenero', '$UserEmail', '$UserPassword', '$UserPassword2')"; 



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
