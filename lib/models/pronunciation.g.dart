// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pronunciation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pronunciation _$PronunciationFromJson(Map<String, dynamic> json) =>
    Pronunciation(
      mw: json['mw'] as String,
      sound: json['sound'] == null
          ? null
          : Sound.fromJson(json['sound'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PronunciationToJson(Pronunciation instance) =>
    <String, dynamic>{
      'mw': instance.mw,
      'sound': instance.sound,
    };

Sound _$SoundFromJson(Map<String, dynamic> json) => Sound(
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$SoundToJson(Sound instance) => <String, dynamic>{
      'audio': instance.audio,
    };
