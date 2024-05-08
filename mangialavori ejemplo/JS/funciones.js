$(document).ready(function() 
{

    alert("Hola");
insertar_registro();


}
)
function insertar_registro()
{
    //evento click en el boton #btn_register
$(document).on('click', '#btn_register', function() 

{
var user = $('#nombre').val();
var apellido= $('#apellido').val();
var dni= $('#dni').val()
var fechadenacimiento= $('#fechadenacimiento').val();
var email= $('#email').val();
var contrasena= $('#Contrasena').val();
var repetir= $('#Repetir').val ();
//Validacion por frontend
if(nombre == "" || apellido == "" || dni =="" || fechadenacimiento =="" || email =="" || contrasena =="" || repetir =="")
    {
        $('#mensaje').html('Llenar los campos en blanco');
    }
else
{

    $.ajax(
        {
            URL: 'insertar.php',
            method: 'post',
            data: {Uname:user, Uapellido:apellido, Udni:dni, Ufechadenacimiento:fechadenacimiento, UEmail:email, Ucontrasena:contrasena, Urepetir:repetir},
            success: function (data)
        {
            $('#Mensaje').html (data);
          // $('#Mensaje').html ('Se Inserto Bien');
          //alert("Se inserto bien");
           // $('#Registration').modal ('show');
           // $('form').trigger ('reset')
           // Mostrar_registro();

           alert("Entro a la funcion");
           //alert(data);

        } 



        }
    )
}
})
}

