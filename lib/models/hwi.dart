import 'package:json_annotation/json_annotation.dart';
import 'pronunciation.dart';

part 'hwi.g.dart';

@JsonSerializable()
class Hwi {
  final String hw;
  final List<Pronunciation>? prs;

  Hwi({required this.hw, this.prs});

  factory Hwi.fromJson(Map<String, dynamic> json) => _$HwiFromJson(json);
  Map<String, dynamic> toJson() => _$HwiToJson(this);
}