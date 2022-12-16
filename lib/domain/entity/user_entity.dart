import 'package:pr_2/domain/entity/gender_entity.dart';
import 'package:pr_2/domain/entity/role_entity.dart';

class UserEntity{
  late int id;
  final String firstname;
  final String middlename;
  final String lastname;
  final String login;
  final String password;
  final RoleEnum idRole;
  final GenderEnum idGender;

  UserEntity({
    this.id = 0,
    required this.firstname,
    required this.middlename,
    required this.lastname,
    required this.login,
    this.password = '',
    required this.idRole,
    required this.idGender,
  });
}