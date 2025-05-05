import 'package:json_annotation/json_annotation.dart';
import 'meta.dart';
import 'hwi.dart';
import 'definition.dart';

part 'dictionary_entry.g.dart';

@JsonSerializable()
class DictionaryEntry {
  final Meta meta;
  final Hwi hwi;
  final String fl;
  final List<Definition> def;

  DictionaryEntry({
    required this.meta,
    required this.hwi,
    required this.fl,
    required this.def,
  });

  factory DictionaryEntry.fromJson(Map<String, dynamic> json) =>
      _$DictionaryEntryFromJson(json);

  Map<String, dynamic> toJson() => _$DictionaryEntryToJson(this);
}
