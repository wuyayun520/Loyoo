// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AICharacter _$AICharacterFromJson(Map<String, dynamic> json) {
  return _AICharacter.fromJson(json);
}

/// @nodoc
mixin _$AICharacter {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get personality => throw _privateConstructorUsedError;
  List<String> get capabilities => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;
  bool get isSystem => throw _privateConstructorUsedError;

  /// Serializes this AICharacter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AICharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AICharacterCopyWith<AICharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AICharacterCopyWith<$Res> {
  factory $AICharacterCopyWith(
          AICharacter value, $Res Function(AICharacter) then) =
      _$AICharacterCopyWithImpl<$Res, AICharacter>;
  @useResult
  $Res call(
      {String id,
      String name,
      String avatar,
      String description,
      List<String> personality,
      List<String> capabilities,
      DateTime createdAt,
      bool isPinned,
      bool isSystem});
}

/// @nodoc
class _$AICharacterCopyWithImpl<$Res, $Val extends AICharacter>
    implements $AICharacterCopyWith<$Res> {
  _$AICharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AICharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? description = null,
    Object? personality = null,
    Object? capabilities = null,
    Object? createdAt = null,
    Object? isPinned = null,
    Object? isSystem = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      personality: null == personality
          ? _value.personality
          : personality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AICharacterImplCopyWith<$Res>
    implements $AICharacterCopyWith<$Res> {
  factory _$$AICharacterImplCopyWith(
          _$AICharacterImpl value, $Res Function(_$AICharacterImpl) then) =
      __$$AICharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String avatar,
      String description,
      List<String> personality,
      List<String> capabilities,
      DateTime createdAt,
      bool isPinned,
      bool isSystem});
}

/// @nodoc
class __$$AICharacterImplCopyWithImpl<$Res>
    extends _$AICharacterCopyWithImpl<$Res, _$AICharacterImpl>
    implements _$$AICharacterImplCopyWith<$Res> {
  __$$AICharacterImplCopyWithImpl(
      _$AICharacterImpl _value, $Res Function(_$AICharacterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AICharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? description = null,
    Object? personality = null,
    Object? capabilities = null,
    Object? createdAt = null,
    Object? isPinned = null,
    Object? isSystem = null,
  }) {
    return _then(_$AICharacterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      personality: null == personality
          ? _value._personality
          : personality // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capabilities: null == capabilities
          ? _value._capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AICharacterImpl implements _AICharacter {
  const _$AICharacterImpl(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.description,
      required final List<String> personality,
      required final List<String> capabilities,
      required this.createdAt,
      this.isPinned = false,
      this.isSystem = false})
      : _personality = personality,
        _capabilities = capabilities;

  factory _$AICharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AICharacterImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final String description;
  final List<String> _personality;
  @override
  List<String> get personality {
    if (_personality is EqualUnmodifiableListView) return _personality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personality);
  }

  final List<String> _capabilities;
  @override
  List<String> get capabilities {
    if (_capabilities is EqualUnmodifiableListView) return _capabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capabilities);
  }

  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isPinned;
  @override
  @JsonKey()
  final bool isSystem;

  @override
  String toString() {
    return 'AICharacter(id: $id, name: $name, avatar: $avatar, description: $description, personality: $personality, capabilities: $capabilities, createdAt: $createdAt, isPinned: $isPinned, isSystem: $isSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AICharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._personality, _personality) &&
            const DeepCollectionEquality()
                .equals(other._capabilities, _capabilities) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.isSystem, isSystem) ||
                other.isSystem == isSystem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      avatar,
      description,
      const DeepCollectionEquality().hash(_personality),
      const DeepCollectionEquality().hash(_capabilities),
      createdAt,
      isPinned,
      isSystem);

  /// Create a copy of AICharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AICharacterImplCopyWith<_$AICharacterImpl> get copyWith =>
      __$$AICharacterImplCopyWithImpl<_$AICharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AICharacterImplToJson(
      this,
    );
  }
}

abstract class _AICharacter implements AICharacter {
  const factory _AICharacter(
      {required final String id,
      required final String name,
      required final String avatar,
      required final String description,
      required final List<String> personality,
      required final List<String> capabilities,
      required final DateTime createdAt,
      final bool isPinned,
      final bool isSystem}) = _$AICharacterImpl;

  factory _AICharacter.fromJson(Map<String, dynamic> json) =
      _$AICharacterImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatar;
  @override
  String get description;
  @override
  List<String> get personality;
  @override
  List<String> get capabilities;
  @override
  DateTime get createdAt;
  @override
  bool get isPinned;
  @override
  bool get isSystem;

  /// Create a copy of AICharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AICharacterImplCopyWith<_$AICharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
