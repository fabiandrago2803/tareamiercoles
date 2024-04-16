//Evita el envío del formulario hasta comprobar
document.formtarea.addEventListener('submit', validarFormulario);
function validarFormulario(evObject) {
evObject.preventDefault();
}


    

// evitar el submit al presionar enter
document.addEventListener("keydown", function(e) {
    if (e.key === "Enter") {
      e.preventDefault();
    }
  });




