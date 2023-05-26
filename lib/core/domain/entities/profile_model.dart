import 'dart:convert';

class EmployeeModel {
  final String name;
  final String surname;
  final String lastname;
  final String? workplace;
  final String position;
  

  EmployeeModel(this.name, this.surname, this.lastname, this.workplace, this.position);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name':name,
      'surname':surname,
      'lastname':lastname,
      'workplace':workplace,
      'position':position,
    };
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    return EmployeeModel(
      map['name'] as String,
      map['surname'] as String,
      map['lastname'] as String,
      map['workplace'] as String?,
      map['position'] as String,
      
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeModel.fromJson(String source) => EmployeeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
