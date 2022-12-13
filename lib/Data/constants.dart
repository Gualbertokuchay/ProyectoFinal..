import 'package:flutter/material.dart';

//diseño de las tablas-de correo y contraseña- tambien el de los texto
InputDecoration formDecoration(String labelText, IconData iconData) {
  return InputDecoration(
    errorStyle: const TextStyle(fontSize: 10),
    prefixIcon: Icon(
      iconData,
      color: Colors.indigo,
    ),
    errorMaxLines: 3,
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.grey),
    enabledBorder: enableBorder,
    focusedBorder: focusedBorder,
    errorBorder: errorBorder,
  );
}

const enableBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
  borderSide: BorderSide(
    width: 1,
    color: Colors.indigoAccent,
  ),
);

const focusedBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.indigoAccent,
  ),
);

const errorBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.red,
  ),
);

//dividir botones--clases y tamaño

class SizedBox10 extends StatelessWidget {
  const SizedBox10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class SizedBox20 extends StatelessWidget {
  const SizedBox20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBox30 extends StatelessWidget {
  const SizedBox30({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
//estilo del texto y salto de pagina de los formatos:

const TextStyle style16indigo = TextStyle(
  fontFamily: "HEROBEAM",
  fontSize: 16,
  color: Colors.indigo,
  fontWeight: FontWeight.w300,
);
const TextStyle style16white = TextStyle(
  fontFamily: "HEROBEAM",
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.w300,
);

const TextStyle style16black = TextStyle(
  fontFamily: "HEROBEAM",
  fontSize: 16,
  color: Colors.grey,
  fontWeight: FontWeight.w300,
);
const TextStyle titleStyleIndigo = TextStyle(
  fontFamily: "HEROBEAM",
  fontSize: 32,
  color: Colors.indigo,
  fontWeight: FontWeight.w400,
);
