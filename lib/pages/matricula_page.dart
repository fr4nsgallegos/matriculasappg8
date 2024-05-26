import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/institucion_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/item_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatefulWidget {
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
  List<Widget> tilesList = [];

  MatriculaModel newMatricula = MatriculaModel(
    alumno: AlumnoModel(
      "Pedro",
      "pedro123@gmail.com",
      "13245678",
    ),
    fecha: "20/20/21",
    carrera: CarreraModel(titulo: "Ingeniero de sistemas", duracion: "5 años"),
  );

  List<AlumnoModel> alumnoList = [
    AlumnoModel("Juanito", "juan23@qwe", "13245687"),
    AlumnoModel("Pedro", "Ped@sd", "7777777"),
    AlumnoModel("Anasss", "email.ema@ma", "55555555"),
  ];

  List<InstitucionModel> institucionesList = [
    InstitucionModel(
        direccion: "av123",
        matriculas: [
          MatriculaModel(
            alumno: AlumnoModel(
              "Pedro",
              "pedro123@gmail.com",
              "13245678",
            ),
            fecha: "20/20/21",
            carrera: CarreraModel(
                titulo: "Ingeniero de sistemas", duracion: "5 años"),
          ),
        ],
        nombre: "TECSUP",
        ruc: "132465",
        telefono: "123465"),
    InstitucionModel(
        direccion: "LIMA",
        matriculas: [],
        nombre: "PUCP",
        ruc: "132222222465",
        telefono: "11111"),
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
          AlumnoModel auxAlumno =
              AlumnoModel("lana", "correo@core", "88888888");
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
            ...institucionesList.map(
              (instiSeleccionada) {
                return Column(
                  children: [
                    Text(instiSeleccionada.nombre),
                    ...instiSeleccionada.matriculas.map(
                      (e) => Text("Hola"),
                    )
                  ],
                );
              },
            ),
            Text("NOMBRE DE ISTITUCION"),
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
                      // alumnoSeleccionado.nombre = "EDITADO";
                      print(alumnoList.indexOf(alumnoSeleccionado));
                      alumnoList[alumnoList.indexOf(alumnoSeleccionado)] =
                          AlumnoModel(
                        "Nuevo nombre",
                        "nuevo correo",
                        "nuevvo dni",
                      );
                      print(alumnoSeleccionado.nombre);
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
