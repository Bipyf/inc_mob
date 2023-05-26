import 'dart:convert';

class PositionModel {
  final int id;
  final String pos;
  

  PositionModel(this.id, this.pos);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pos':pos
    };
  }

  factory PositionModel.fromMap(Map<String, dynamic> map) {
    return PositionModel(
      map['id'] as int,
      map['pos'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PositionModel.fromJson(String source) => PositionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
