import 'package:crud/Data/constants.dart';
import 'package:crud/Data/validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/user_view_model.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

//decorator
//crear una lcase para los controladores de los registros del correo y gmail- pero tambien generar
//una funcion para el nombre y el confirmado de correo.
class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController emailController;
//agregar un inititState para las clases de los registros.
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

//confirmar las clases de los controladores
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

//Datos de la tabla de registro----
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UserViewModel>().registerFormkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Crear Cuentas",
              style: style16indigo,
            ),
            const SizedBox20(),
            TextFormField(
                validator: validateName,
                controller: nameController,
                decoration: formDecoration("Nombre", Icons.person_outline),
                style: style16indigo),
            const SizedBox10(),
            TextFormField(
                validator: validateEmail,
                controller: emailController,
                decoration:
                    formDecoration("Correo Electronico", Icons.email_outlined),
                style: style16indigo),
            const SizedBox10(),
            TextFormField(
                validator: validatePassword,
                controller: passwordController,
                decoration: formDecoration("Contraseña", Icons.lock_outline),
                style: style16indigo),
            const SizedBox10(),
            TextFormField(
                validator: validateConfirmPassword,
                controller: confirmPasswordController,
                decoration:
                    formDecoration("Confirmar Contraseña", Icons.lock_outline),
                style: style16indigo),
            const SizedBox10(),
            CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.indigo,
                child: const Text(
                  'registrar',
                  style: style16white,
                ),
                onPressed: () {
                  context.read<UserViewModel>().createUser(
                        context,
                        name: nameController.text.trim(),
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                        confirmPassword: confirmPasswordController.text.trim(),
                      );
                })
          ],
        ),
      ),
    );
  }
}
