import 'package:matriculasapp/models/matricula_model.dart';

class InstitucionModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<MatriculaModel> matriculas;
  InstitucionModel({
    required this.direccion,
    required this.matriculas,
    required this.nombre,
    required this.ruc,
    required this.telefono,
  });
}
