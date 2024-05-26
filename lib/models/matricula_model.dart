import 'package:matriculasapp/models/alumno_model.dart';
import 'package:matriculasapp/models/carrera_model.dart';

class Matricula {
  Alumno alumno;
  String? fecha;
  String hora;
  Carrera carrera;
  Matricula({
    required this.alumno,
    this.fecha,
    this.hora = "10:00",
    required this.carrera,
  });
}
