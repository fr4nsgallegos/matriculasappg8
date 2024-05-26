import 'package:matriculasapp/models/alumno_model.dart';

class Matricula {
  Alumno alumno;
  String? fecha;
  String hora;
  Matricula({
    required this.alumno,
    this.fecha,
    this.hora = "10:00",
  });
}
