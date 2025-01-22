// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VirtualAvatarImpl _$$VirtualAvatarImplFromJson(Map<String, dynamic> json) =>
    _$VirtualAvatarImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      description: json['description'] as String,
      personality: json['personality'] as String,
      capabilities: json['capabilities'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPinned: json['isPinned'] as bool? ?? false,
      isSystem: json['isSystem'] as bool? ?? false,
    );

Map<String, dynamic> _$$VirtualAvatarImplToJson(_$VirtualAvatarImpl instance) =>
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
