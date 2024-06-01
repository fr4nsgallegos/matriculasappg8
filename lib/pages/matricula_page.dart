import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/institucion_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/institucion_card.dart';
import 'package:matriculasapp/widgets/item_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatefulWidget {
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
  List<Widget> tilesList = [];

  AlumnoModel alumno1 = AlumnoModel("Juanito", "juan23@qwe", "13245687");
  AlumnoModel alumno2 = AlumnoModel("Pedro", "Ped@sd", "7777777");
  AlumnoModel alumno3 = AlumnoModel("Anasss", "email.ema@ma", "55555555");

  InstitucionModel institucion1 = InstitucionModel(
      direccion: "avvv123",
      matriculas: [],
      nombre: "TECSUP",
      ruc: "RUC TECSUP",
      telefono: "13246578");
  InstitucionModel institucion2 = InstitucionModel(
      direccion: "AV LIMA",
      matriculas: [],
      nombre: "PUCP",
      ruc: "RUC PUCP",
      telefono: "13246578");
  InstitucionModel institucion3 = InstitucionModel(
      direccion: "AV UCV",
      matriculas: [],
      nombre: "UCV",
      ruc: "RUC UCV",
      telefono: "13246578");

  CarreraModel carrera1 =
      CarreraModel(titulo: "Ingeniero de sistemas", duracion: "5 años");
  CarreraModel carrera2 = CarreraModel(titulo: "Chef", duracion: "3 años");
  CarreraModel carrera3 =
      CarreraModel(titulo: "Diseñador gráfico", duracion: "7 años");

  MatriculaModel newMatricula = MatriculaModel(
    alumno: AlumnoModel(
      "Pedro",
      "pedro123@gmail.com",
      "13245678",
    ),
    fecha: "20/20/21",
    carrera: CarreraModel(titulo: "Ingeniero de sistemas", duracion: "5 años"),
  );

  List<InstitucionModel> institucionesList = [];

  // generateListTiles() {
  //   alumnoList.forEach((element) {
  //     tilesList.add(ItemCard(name: element.nombre, institution: "tecsup"));
  //   });
  // }
  AlumnoModel auxAlumno =
      AlumnoModel("Nuevo aLUMNO", "123@gmail.com", "13245687");
  CarreraModel auxCarrera =
      CarreraModel(titulo: "Ing Ambiental", duracion: "5 años");

  @override
  void initState() {
    // generateListTiles();
    institucionesList.add(institucion1);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          institucionesList.add(institucion3);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: ListView(
            children: [
              ...institucionesList.map(
                (instiSeleccionada) {
                  return Column(
                    children: [
                      InstitucionCard(
                        name: instiSeleccionada.nombre,
                        cantidadMatriculas: instiSeleccionada.matriculas.length,
                        addMatricula: () {
                          instiSeleccionada.matriculas.add(
                            MatriculaModel(alumno: alumno1, carrera: carrera2),
                            // newMatricula,
                          );
                          setState(() {});
                        },
                        restartMatriculas: () {
                          instiSeleccionada.matriculas.clear();
                          setState(() {});
                        },
                      ),
                      instiSeleccionada.matriculas.length == 0
                          ? Text(
                              "Aún no hay matriculados",
                              style: TextStyle(color: Colors.grey[500]),
                            )
                          : Column(
                              children: [
                                ...instiSeleccionada.matriculas.map(
                                  (matriculaSeleccionada) => ItemCard(
                                    name: matriculaSeleccionada.alumno.nombre,
                                    correo: matriculaSeleccionada.alumno.correo,
                                    carrera:
                                        matriculaSeleccionada.carrera.titulo,
                                    fechaMatricula:
                                        matriculaSeleccionada.fecha ?? "-",
                                    // matriculaSeleccionada.fecha == null
                                    //     ? "-"
                                    //     : matriculaSeleccionada.fecha!,
                                    funcionDelete: () {
                                      instiSeleccionada.matriculas
                                          .remove(matriculaSeleccionada);
                                      setState(() {});
                                    },
                                    funcionEdit: () {
                                      instiSeleccionada.matriculas[
                                              instiSeleccionada
                                                  .matriculas
                                                  .indexOf(
                                                      matriculaSeleccionada)] =
                                          MatriculaModel(
                                        alumno: auxAlumno,
                                        carrera: auxCarrera,
                                      );
                                      setState(() {});
                                    },
                                  ),
                                )
                              ],
                            )
                    ],
                  );
                },
              ).toList(),
              // Text("NOMBRE DE ISTITUCION"),
              // ...alumnoList
              //     .map(
              //       (alumnoSeleccionado) => ItemCard(
              //         name: alumnoSeleccionado.nombre,
              //         institution: "PUCP",
              //         funcionDelete: () {
              //           // alumnoList.removeLast();
              //           // alumnoList.removeAt(1);
              //           // alumnoList.removeRange(0, 2);
              //           alumnoList.remove(alumnoSeleccionado);
              //           setState(() {});
              //         },
              //         funcionEdit: () {
              //           print("editandoooo");
              //           // alumnoSeleccionado.nombre = "EDITADO";
              //           print(alumnoList.indexOf(alumnoSeleccionado));
              //           alumnoList[alumnoList.indexOf(alumnoSeleccionado)] =
              //               AlumnoModel(
              //             "Nuevo nombre",
              //             "nuevo correo",
              //             "nuevvo dni",
              //           );
              //           print(alumnoSeleccionado.nombre);
              //           setState(() {});
              //         },
              //       ),
              //     )
              //     .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
