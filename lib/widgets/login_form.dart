import 'package:crud/Data/constants.dart';
import 'package:crud/Data/validator.dart';
import 'package:crud/routers/router_manager.dart';
import 'package:crud/views/user_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//tabla para el login.
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UserViewModel>().loginFormkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox30(),
            TextFormField(
              textInputAction: TextInputAction.next,
              validator: validateEmail,
              controller: emailController,
              decoration:
                  formDecoration('Correo Electronico', Icons.mail_outline),
            ),
            const SizedBox10(),
            TextFormField(
              textInputAction: TextInputAction.done,
              validator: validatePassword,
              controller: passwordController,
              decoration: formDecoration('Contraseña', Icons.lock_outline),
            ),
            //Password
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      context.read<UserViewModel>().resetPassword(context,
                          email: emailController.text.trim());
                    },
                    child: const Text(
                      "Has olvidado tu contraseña ?",
                    ))
              ],
            ),
            //Boton de incio
            const SizedBox20(),
            CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.indigoAccent,
                child: const Text(
                  'Iniciar sesión',
                  style: style16white,
                ),
                onPressed: () {
                  context.read<UserViewModel>().loginUser(context,
                      email: emailController.text.trim(),
                      password: passwordController.text.trim());
                }),

            //Boton de registro
            const SizedBox10(),
            CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                child: const Text(
                  'registrar',
                  style: style16indigo,
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, RouteManager.registerPage);
                })
          ],
        ),
      ),
    );
  }
}
