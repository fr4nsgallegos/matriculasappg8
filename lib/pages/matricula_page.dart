import 'package:flutter/material.dart';
import 'package:matriculasapp/widgets/alumno_card.dart';

class MatriculaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matrículas"),
      ),
      body: Column(
        children: [
          generateListTile("Jhonny Gallegos", "TECSUP 01"),
          AlumnoCard(
            name: "Jhonny",
            institution: "PUCP",
          ),
        ],
      ),
    );
  }
}

Widget generateListTile(String name, String institution) {
  return ListTile(
    leading: Icon(Icons.person),
    title: Text(name),
    subtitle: Text(institution),
    trailing: IconButton(
      icon: Icon(Icons.delete),
      onPressed: () {
        print("Hola");
      },
    ),
  );
}
