import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  final String id;
  final String uuid;
  final String sort;
  final String src;
  final String section;
  final List<String> stems;
  final bool offensive;

  Meta({
    required this.id,
    required this.uuid,
    required this.sort,
    required this.src,
    required this.section,
    required this.stems,
    required this.offensive,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}