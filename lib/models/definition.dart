import 'package:json_annotation/json_annotation.dart';

part 'definition.g.dart';

@JsonSerializable()
class Definition {
  final List<List<List<dynamic>>> sseq;

  Definition({required this.sseq});

  factory Definition.fromJson(Map<String, dynamic> json) =>
      _$DefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$DefinitionToJson(this);
}
