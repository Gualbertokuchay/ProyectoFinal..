import 'package:crud/services/firabase_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba para agregar productos'),
      ),
      body: FutureBuilder(
          future: getPeople(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: ((context, index) {
                  return Text(snapshot.data?[index]['name']);
                }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          })), //esta funcion ejecuta la espera o detiene  la lista creada.
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/add');
          //para actualisar los datos de los usuarios
          //mejor lo ejecuto desde el telefono
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
