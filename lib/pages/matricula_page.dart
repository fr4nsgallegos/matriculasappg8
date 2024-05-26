import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/alumno_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatelessWidget {
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

  generateListTiles() {
    alumnoList.forEach((element) {
      tilesList.add(AlumnoCard(name: element.nombre, institution: "tecsup"));
    });
  }

  @override
  Widget build(BuildContext context) {
    generateListTiles();

    return Scaffold(
      appBar: AppBar(
        title: Text("Matrículas"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: cro.center,
          children: [
            Text("Mis Alumnos"),
            ...tilesList,
          ],
          // [
          //   // generateListTile("Jhonny Gallegos", "TECSUP 01"),
          //   // AlumnoCard(
          //   //   name: "Jhonny",
          //   //   institution: "PUCP",
          //   // ),
          // ],
        ),
      ),
    );
  }
}
