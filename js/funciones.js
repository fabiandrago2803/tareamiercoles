$(document).ready(function()
{
Insertar_registro();
//alert("funciona");
})

function Insertar_registro()
{
//evento click en el boton #btn_submit
$(document).on('click','#submit',function()
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
    $('#message').html('Llenar los campos en blanco');
}
else
{
$.ajax(
    {
        url: 'insertar.php',
        method: 'post',
        data: {UName:Name,UEmail:Email},  //etiqueta:data
        success: function(data)
        {
            $('#message').html(data);
            //$('#Registration').modal('show');
            //$('form').trigger('reset');
            //Mostrar_registro();
        }
    })
}
})
}