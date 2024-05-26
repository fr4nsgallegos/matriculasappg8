import 'package:matriculasapp/models/alumno_model.dart';
import 'package:matriculasapp/models/carrera_model.dart';

class MatriculaModel {
  AlumnoModel alumno;
  String? fecha;
  String hora;
  CarreraModel carrera;
  MatriculaModel({
    required this.alumno,
    this.fecha,
    this.hora = "10:00",
    required this.carrera,
  });
}
