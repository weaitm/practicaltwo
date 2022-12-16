class GenderEntity {
  late int id;
  final String gendername;

  GenderEntity({
    required this.gendername
  });
}

enum GenderEnum{
  man(id: 1, gendername: 'Мужской'),
  woman(id: 2, gendername: 'Женский');
  const GenderEnum({
    required this.id,
    required this.gendername,
  });
  final int id;
  final String gendername;
}