import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/item_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatefulWidget {
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
  List<Widget> tilesList = [];

  Matricula newMatricula = Matricula(
    alumno: Alumno(
      "Pedro",
      "pedro123@gmail.com",
      "13245678",
    ),
    fecha: "20/20/21",
    carrera: Carrera(titulo: "Ingeniero de sistemas", duracion: "5 años"),
  );

  List<Alumno> alumnoList = [
    Alumno("Juanito", "juan23@qwe", "13245687"),
    Alumno("Pedro", "Ped@sd", "7777777"),
    Alumno("Anasss", "email.ema@ma", "55555555"),
  ];

  // generateListTiles() {
  //   alumnoList.forEach((element) {
  //     tilesList.add(ItemCard(name: element.nombre, institution: "tecsup"));
  //   });
  // }

  @override
  void initState() {
    // generateListTiles();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Alumno auxAlumno = Alumno("lana", "correo@core", "88888888");
          alumnoList.add(auxAlumno);
          // tilesList = [];
          // generateListTiles();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Matrículas"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Mis Alumnos"),
            // ...tilesList,
            ...alumnoList
                .map(
                  (alumnoSeleccionado) => ItemCard(
                    name: alumnoSeleccionado.nombre,
                    institution: "PUCP",
                    funcionDelete: () {
                      // alumnoList.removeLast();
                      // alumnoList.removeAt(1);
                      // alumnoList.removeRange(0, 2);
                      alumnoList.remove(alumnoSeleccionado);
                      setState(() {});
                    },
                    funcionEdit: () {
                      print("editandoooo");

                      setState(() {});
                    },
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
