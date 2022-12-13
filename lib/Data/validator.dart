//clases para la validacion de datos del name(nombre)

String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'requiere un nombre';
  }
  return null;
}

//clases para la validacion de datos del Gmail
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'requiere un correo';
  } else if (!RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(value)) {
    return 'Es invalido el correo';
  }
  return null;
}

//clases para la validacion de los datos de la contraseña
String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'requiere un contraseña';
  } else if (!RegExp(
          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})')
      .hasMatch(value)) {
    return 'Por favor ingresa una contraseña correcta ';
  }
  return null;
}

//clases para la validacion de los datos de la contraseña del registro
String? validateConfirmPassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Repite la contraseña';
  }
  return null;
}
