$(document).ready(function()
{alert("Hola");
Insertar_registro();

})

function Insertar_registro()
{
//evento click en el boton #btn_register
$(document).on('click','#btn_register',function()
{
var nombre = $('#nombre').val();
var apellido = $('#apellido')
var dni = $('#dni').val();
var fecha = $('#fecha').val();
var email = $('#email').val();
var password = $('#password').val();
var password2 = $('#password2').val();

//Validacion por frontend
if(nombre == "" || email =="" || apellido == "" || dni =="" || fecha =="" || password =="" || password2 =="")
{
    $('#mensaje').html('Llenar los campos en blanco');
}
else
{
$.ajax(
    {
        url: 'insertar.php',
        method: 'post',
        data: {UName:nombre, UApellido:apellido, UDni:dni, UFecha:fecha, UEmail:email, UPassword:password, UPassword2:password2},  //etiqueta:data
        success: function(data)
        {
            //$('#mensaje').html('Se inserto bien');
           $('#mensaje').html(data);
            //$('#Registration').modal('show');
            //$('form').trigger('reset');
            //Mostrar_registro();
            alert("Entro a la funcion");
            alert(Data);
        }
    })
}
})
}

//danimangialavori github para bajar los repositorios y ver por que no funcionan los alert