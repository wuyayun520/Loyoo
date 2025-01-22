import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final String id;
  final String name;
  final String avatar;
  final String description;
  final int age;
  final String personality;
  final String hobby;
  final String occupation;

  Character({
    required this.id,
    required this.name,
    required this.avatar,
    required this.description,
    required this.age,
    required this.personality,
    required this.hobby,
    required this.occupation,
  });

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterToJson(this);
} 