import 'dart:convert';

class WorkplaceModel {
  final int id;
  final String workplace_name;
  final String cabinet;
  

  WorkplaceModel(this.id, this.workplace_name, this.cabinet);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'workplace_name': workplace_name,
      'cabinet':cabinet
    };
  }

  factory WorkplaceModel.fromMap(Map<String, dynamic> map) {
    return WorkplaceModel(
      map['id'] as int,
      map['workplace_name'] as String,
      map['cabinet'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkplaceModel.fromJson(String source) => WorkplaceModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
