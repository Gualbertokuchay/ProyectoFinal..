import 'package:crud/services/firabase_services.dart';
import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  //classe para el texteditingController nameControlller
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration:
                  const InputDecoration(hintText: 'Ingrese el nuevo nombre'),
            ),
            ElevatedButton(
              //siempre que quieras guardar nueva informacion a la base de datks tienes que volverlo
              //asíncrona o async y regresarle el balor con una clase namecontroller.text;
              //then es una funcion que ejecuta un valor.
              onPressed: () async {
                await addPeople(nameController.text).then((_) {
                  Navigator.pop(context);
                });
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
