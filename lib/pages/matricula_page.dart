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
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Jhonny Gallegos"),
            subtitle: Text("Tecsup"),
            trailing: GestureDetector(
              child: Icon(Icons.delete),
              onTap: () {
                print("Hola");
              },
              onDoubleTap: () {
                print("DOBLE TAP");
              },
            ),

            //     IconButton(
            //   icon: Icon(Icons.delete),
            //   onPressed: () {
            //     print("Hola");
            //   },
            // )
            // onTap: () {
            //   print("Hola");
            // },
          )
        ],
      ),
    );
  }
}
