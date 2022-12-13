import 'package:flutter/material.dart';

class AppProgressindicator extends StatelessWidget {
  const AppProgressindicator({this.text = "", super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // establece el ancho del indicador de progresos
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LinearProgressIndicator(
                color: Colors.indigo,
              ),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
