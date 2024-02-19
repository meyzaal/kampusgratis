import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';

extension RoleX on Role {
  String get nameInIdn {
    var roleString = name.capitalize();
    if (this == Role.student) roleString = 'Mahasiswa';
    if (this == Role.teacher) roleString = 'Pengajar';
    return roleString;
  }
}
