// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Definition _$DefinitionFromJson(Map<String, dynamic> json) => Definition(
      sseq: (json['sseq'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => e as List<dynamic>).toList())
          .toList(),
    );

Map<String, dynamic> _$DefinitionToJson(Definition instance) =>
    <String, dynamic>{
      'sseq': instance.sseq,
    };
