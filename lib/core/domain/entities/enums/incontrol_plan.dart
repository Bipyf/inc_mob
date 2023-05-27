import 'package:json_annotation/json_annotation.dart';
enum incontrolPlan {
  @JsonValue('LITE')
  lite,
  @JsonValue('STANDARD')
  standard,
  @JsonValue('BUSINESS')
  business,
}