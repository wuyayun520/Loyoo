import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_character.freezed.dart';
part 'ai_character.g.dart';

@freezed
class AICharacter with _$AICharacter {
  const factory AICharacter({
    required String id,
    required String name,
    required String avatar,
    required String description,
    required List<String> personality,
    required List<String> capabilities,
    required DateTime createdAt,
    @Default(false) bool isPinned,
    @Default(false) bool isSystem,
  }) = _AICharacter;

  factory AICharacter.fromJson(Map<String, dynamic> json) =>
      _$AICharacterFromJson(json);
} 