import 'package:json_annotation/json_annotation.dart';

part 'pronunciation.g.dart';

@JsonSerializable()
class Pronunciation {
  final String mw;
  final Sound? sound;

  Pronunciation({required this.mw, this.sound});

  factory Pronunciation.fromJson(Map<String, dynamic> json) =>
      _$PronunciationFromJson(json);
  Map<String, dynamic> toJson() => _$PronunciationToJson(this);
}

@JsonSerializable()
class Sound {
  final String audio;

  Sound({required this.audio});

  factory Sound.fromJson(Map<String, dynamic> json) => _$SoundFromJson(json);
  Map<String, dynamic> toJson() => _$SoundToJson(this);
}