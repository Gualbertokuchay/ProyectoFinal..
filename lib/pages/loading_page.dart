import 'dart:async';

import 'package:crud/Data/constants.dart';
import 'package:crud/routers/router_manager.dart';
import 'package:crud/widgets/app_progress_indicator.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
//implemetar el init State a la app inicial/ este dara como inicio a
//la pagina con El nombre Pasteleria creativa
  void initState() {
    Timer(const Duration(seconds: 4), () {
      //ir a la página de inicio de sesión después de 5 segundos en la página de carga
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Pasteleria Creativa",
              //Formato titleStyleIndigo agregado para el diseño de letras es constants.dart
              style: titleStyleIndigo,
            ),
            SizedBox20(),
            AppProgressindicator(),
          ],
        ),
      ),
    );
  }
}
