import 'package:pr_2/domain/entity/gender_entity.dart';

class Gender extends GenderEntity {
  Gender({
    required super.gendername,
  });

  Map<String, dynamic> toMap(){
    return {
      'gender': gendername,
    };
  }

  factory Gender.toFromMap(Map<String, dynamic> json){
    return Gender(
      gendername: json['gender']);
  }
}