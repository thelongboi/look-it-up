// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hwi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hwi _$HwiFromJson(Map<String, dynamic> json) => Hwi(
      hw: json['hw'] as String,
      prs: (json['prs'] as List<dynamic>?)
          ?.map((e) => Pronunciation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HwiToJson(Hwi instance) => <String, dynamic>{
      'hw': instance.hw,
      'prs': instance.prs,
    };
