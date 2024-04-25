function validateForm() {
    const name =
        document.getElementById("name").checked;
    const email =
        document.getElementById("email").value;
    const password =
        document.getElementById("password").value;
    const agree =
        document.getElementById("agree").checked;

    const nameError =
        document.getElementById("name-error");
    const emailError = document.getElementById(
        "email-error"
    );
    const passwordError = document.getElementById(
        "password-error"
    );
    const agreeError = document.getElementById(
        "agree-error"
    );

    nameError.textContent = "";
    emailError.textContent = "";
    passwordError.textContent = "";
    agreeError.textContent = "";

    let isValid = true;

    if (name === "" || /\d/.test(name)) {
        nameError.textContent =
            "Ingrese un Usuario válido.";
        isValid = false;
    }

    if (email === "" || !email.includes("@")) {
        emailError.textContent =
            "Ingrese un E-Mail válido.";
        isValid = false;
    }

    if (password === "" || password.length < 6) {
        passwordError.textContent =
            "La Contraseña debe tener al menos 6 caracteres.";
        isValid = false;
    }


    if (!agree) {
        agreeError.textContent =
            "Debe aceptar los Términos y Condiciones para continuar.";
        isValid = false;
    }

    return isValid;

}

// evitar el submit al presionar enter
document.addEventListener("keydown", function(e) {
    if (e.key === "Enter") {
      e.preventDefault();
    }
  });