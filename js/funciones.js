$(document).ready(function()
{
Insertar_registro();
//alert("funciona");
})

function Insertar_registro()
{
//evento click en el boton #btn_send
$(document).on('click','#btn_send',function()
{
var User = $('#UserName').val();
var Email = $('#UserEmail').val();

//Validacion por frontend
if(User == "" || Email =="")
{
    $('#message').html('Llenar los campos en blanco');
}
else
{
$.ajax(
    {
        url: 'insertar.php',
        method: 'post',
        data: {UName:User,UEmail:Email},  //etiqueta:data
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