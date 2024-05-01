//Evita el envío del formulario hasta comprobar
formtarea.addEventListener('submit', (e) => {
	e.preventDefault();
});


// evitar el submit al presionar enter
document.addEventListener("keydown", function(e) {
    if (e.key === "Enter") {
      e.preventDefault();
    }
  });




