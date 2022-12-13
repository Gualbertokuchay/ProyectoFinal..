import 'package:crud/pages/Home_page.dart';
import 'package:crud/pages/add_name_page.dart';
import 'package:flutter/material.dart';

//importaciones para la base de datos
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
//importacion para el servicio de firebase_services

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Catalogo());
}

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalogo y Crud',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddNamePage(),
      },
    );
  }
}
