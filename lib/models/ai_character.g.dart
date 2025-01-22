// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AICharacterImpl _$$AICharacterImplFromJson(Map<String, dynamic> json) =>
    _$AICharacterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      description: json['description'] as String,
      personality: (json['personality'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      capabilities: (json['capabilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPinned: json['isPinned'] as bool? ?? false,
      isSystem: json['isSystem'] as bool? ?? false,
    );

Map<String, dynamic> _$$AICharacterImplToJson(_$AICharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'description': instance.description,
      'personality': instance.personality,
      'capabilities': instance.capabilities,
      'createdAt': instance.createdAt.toIso8601String(),
      'isPinned': instance.isPinned,
      'isSystem': instance.isSystem,
    };
