import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_avatar.freezed.dart';
part 'virtual_avatar.g.dart';

@freezed
class VirtualAvatar with _$VirtualAvatar {
  const factory VirtualAvatar({
    required String id,
    required String name,
    required String avatar,
    required String description,
    required String personality,
    required Map<String, dynamic> capabilities,
    required DateTime createdAt,
    @Default(false) bool isPinned,
    @Default(false) bool isSystem,
  }) = _VirtualAvatar;

  factory VirtualAvatar.fromJson(Map<String, dynamic> json) =>
      _$VirtualAvatarFromJson(json);
} 