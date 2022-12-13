import 'package:cloud_firestore/cloud_firestore.dart';

//para leer la informacion de mi base de datos clases designadas para el people.
FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');
  QuerySnapshot queryPeople = await collectionReferencePeople.get();
  for (var documento in queryPeople.docs) {
    people.add(documento.data());
  }
  await Future.delayed(const Duration(seconds: 4));
  return people;
}

//funcion para guardar un nombre en la base de datos
//String hay que mandar por parametros el name
//siempre que sea un future siempre tiene que llevar la funcion await en el pricipio del codigo.
//terri recuerda esto un future es igual a una promesa en java y javaScrip
Future<void> addPeople(String name) async {
  await db.collection("people").add({'name': name});
}
