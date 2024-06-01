import 'package:flutter/material.dart';

class InstitucionCard extends StatelessWidget {
  String name;
  int cantidadMatriculas;
  VoidCallback addMatricula;
  VoidCallback restartMatriculas;
  InstitucionCard({
    required this.name,
    required this.cantidadMatriculas,
    required this.addMatricula,
    required this.restartMatriculas,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xffe0e1dd),
        borderRadius: BorderRadius.circular(10),
      ),
      // width: 24,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("$name - $cantidadMatriculas matriculados"),
          IconButton(
            onPressed: addMatricula,
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: restartMatriculas,
            icon: Icon(Icons.restart_alt_outlined),
          ),
        ],
      ),
    );
  }
}
