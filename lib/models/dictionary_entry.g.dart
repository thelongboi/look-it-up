// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryEntry _$DictionaryEntryFromJson(Map<String, dynamic> json) =>
    DictionaryEntry(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      hwi: Hwi.fromJson(json['hwi'] as Map<String, dynamic>),
      fl: json['fl'] as String,
      def: (json['def'] as List<dynamic>)
          .map((e) => Definition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DictionaryEntryToJson(DictionaryEntry instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'hwi': instance.hwi,
      'fl': instance.fl,
      'def': instance.def,
    };
