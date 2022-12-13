import 'package:crud/routers/router_manager.dart';
import 'package:crud/widgets/dialogs.dart';
import 'package:flutter/cupertino.dart';

//decorator
class UserViewModel with ChangeNotifier {
  final loginFormkey = GlobalKey<FormState>();
  final registerFormkey = GlobalKey<FormState>();

  //clases para el loginUser
  void loginUser(BuildContext context,
      {required String email, required String password}) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (loginFormkey.currentState?.validate() ?? false) {
      Navigator.of(context).popAndPushNamed(RouteManager.Pasteleriacreativa);
      /*showSnackBar();*/
    }
  }

//bridge
  void createUser(
    BuildContext context, {
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    FocusManager.instance.primaryFocus?.unfocus();

    if (registerFormkey.currentState?.validate() ?? false) {
      if (confirmPassword.toString().trim() != password.toString().trim()) {
        showSnackBar(context, "Esta Contraseña no es correcta", 4000);
      } else {
        Navigator.of(context).popAndPushNamed(RouteManager.Pasteleriacreativa);
      }
    }
  }

  void logoutUser(BuildContext context) async {
    Navigator.popAndPushNamed(context, RouteManager.loginPage);
  }

  void resetPassword(BuildContext context, {required String email}) async {
    if (email.isEmpty) {
      showSnackBar(context,
          'Por favor siga las Instrucione para el Renicio del correo', 4000);
    } else {
      showSnackBar(context, 'instrucción de reinicio para el $email', 4000);
    }
  }
}
