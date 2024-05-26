import 'package:flutter/material.dart';

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
          GenerateListTile2(
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

class GenerateListTile2 extends StatelessWidget {
  String name;
  String institution;
  GenerateListTile2({
    required this.name,
    required this.institution,
  });

  @override
  Widget build(BuildContext context) {
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
}
