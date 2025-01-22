// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      description: json['description'] as String,
      age: (json['age'] as num).toInt(),
      personality: json['personality'] as String,
      hobby: json['hobby'] as String,
      occupation: json['occupation'] as String,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'description': instance.description,
      'age': instance.age,
      'personality': instance.personality,
      'hobby': instance.hobby,
      'occupation': instance.occupation,
    };
