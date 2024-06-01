import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  String name;
  String correo;
  String carrera;
  String fechaMatricula;
  VoidCallback funcionDelete;
  VoidCallback funcionEdit;
  ItemCard({
    required this.name,
    required this.correo,
    required this.carrera,
    required this.fechaMatricula,
    required this.funcionDelete,
    required this.funcionEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.person),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(correo),
              Text(carrera),
              Text("Fecha de matrícula: $fechaMatricula")
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: funcionEdit,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: funcionDelete,
              ),
            ],
          ),
        ],
      ),
    );

    //  ListTile(
    //   leading: Icon(Icons.person),
    //   title: Text(name),
    //   subtitle: Text(institution),
    //   trailing: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       IconButton(
    //         icon: Icon(Icons.edit),
    //         onPressed: funcionEdit,
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.delete),
    //         onPressed: funcionDelete,
    //       ),
    //     ],
    //   ),
    // );
  }
}
