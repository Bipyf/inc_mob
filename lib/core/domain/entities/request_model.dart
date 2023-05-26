import 'dart:convert';

class RequestModel {
  final int? id;
  final String? reg_date;
  final String? req_desc;
  final String? req_acc_date;
  final String? req_status;
  final String? req_cmp_date;
  final int? emp_id;
  final int? computer;
  final int? sys_id;


  RequestModel(this.id, this.reg_date, this.req_desc, this.req_acc_date, this.req_status, this.req_cmp_date, this.emp_id, this.computer, this.sys_id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'reg_date':reg_date,
      'req_desc':req_desc,
      'req_acc_date':req_acc_date,
      'req_status':req_status,
      'req_cmp_date':req_cmp_date,
      'emp_id':emp_id,
      'computer':computer,
      'sys_id': sys_id
    };
  }

  factory RequestModel.fromMap(Map<String, dynamic> map) {
    return RequestModel(
      map['id'] as int,
      map['reg_date'] as String,
      map['req_desc'] as String?,
      map['req_acc_date'] as String?,
      map['req_status'] as String,
      map['req_cmp_date'] as String?,
      map['emp_id'] as int?,
      map['computer'] as int?,
      map['sys_id'] as int?
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestModel.fromJson(String source) => RequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
