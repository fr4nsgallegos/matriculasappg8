import 'package:flutter/material.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class AlumnoCard extends StatelessWidget {
  String name;
  String institution;
  AlumnoCard({
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
