import 'dart:convert';

class ComputerModel {
  final int id;
  final String device_name;
  final String condition;
  final String? arrival_date;
  final String? deletion_date;
  final String? notes;
  final int? owner;
  
  

  ComputerModel(this.id, this.device_name, this.condition, this.arrival_date, this.deletion_date, this.notes, this.owner);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'device_name':device_name,
      'condition': condition,
      'arrival_date': arrival_date,
      'deletion_date': deletion_date,
      'notes': notes,
      'owner': owner,
      
    };
  }

  factory ComputerModel.fromMap(Map<String, dynamic> map) {
    return ComputerModel(
      map['id'] as int,
      map['device_name'] as String,
      map['condition'] as String,
      map['arrival_date'] as String?,
      map['deletion_date'] as String?,
      map['notes'] as String?,
      map['owner'] as int?,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerModel.fromJson(String source) => ComputerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
