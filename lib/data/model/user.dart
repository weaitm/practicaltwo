import 'package:pr_2/domain/entity/gender_entity.dart';
import 'package:pr_2/domain/entity/role_entity.dart';
import 'package:pr_2/domain/entity/user_entity.dart';

class User extends UserEntity {
  final String password;

  User({
    required super.firstname,
    required super.lastname,
    required super.middlename,
    required super.login,
    required this.password,
    required super.idRole,
    required super.idGender,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'middlename': middlename,
      'login': login,
      'password':password,
      'gender_id': idGender.id,
      'role_id':idRole.id,
    };
  }

  factory User.toFromMap(Map<String,dynamic> json){
    return User(
      firstname: json['firstname'],
      lastname: json['lastname'],
      middlename: json['middlename'],
      login: json['login'], 
      password: json['password'], 
      idRole: RoleEnum.values.firstWhere((element) => element.id == json['id_role']),
      idGender: GenderEnum.values.firstWhere((element) => element.id == json['id_gender']),
    );
  }
}