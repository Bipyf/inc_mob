import 'package:json_annotation/json_annotation.dart';
enum incontrolStatus {
  @JsonValue('NEW')
  newStatus,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('FAILED')
  failed,
  @JsonValue('DONE')
  done,
}