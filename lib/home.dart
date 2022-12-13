import 'package:crud/firebase_options.dart';
import 'package:crud/views/user_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routers/router_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //https://pub.dev/packages/provider Ejemplo de validacion de usuarios.
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
        initialRoute: RouteManager.loadingPage,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
