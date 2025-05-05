// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      sort: json['sort'] as String,
      src: json['src'] as String,
      section: json['section'] as String,
      stems: (json['stems'] as List<dynamic>).map((e) => e as String).toList(),
      offensive: json['offensive'] as bool,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'sort': instance.sort,
      'src': instance.src,
      'section': instance.section,
      'stems': instance.stems,
      'offensive': instance.offensive,
    };
