// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageDto _$LanguageDtoFromJson(Map<String, dynamic> json) {
  return _LanguageDto.fromJson(json);
}

/// @nodoc
class _$LanguageDtoTearOff {
  const _$LanguageDtoTearOff();

  _LanguageDto call(
      {@JsonKey(ignore: true) String id = '',
      required Map<String, dynamic> translations}) {
    return _LanguageDto(
      id: id,
      translations: translations,
    );
  }

  LanguageDto fromJson(Map<String, Object> json) {
    return LanguageDto.fromJson(json);
  }
}

/// @nodoc
const $LanguageDto = _$LanguageDtoTearOff();

/// @nodoc
mixin _$LanguageDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get translations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageDtoCopyWith<LanguageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageDtoCopyWith<$Res> {
  factory $LanguageDtoCopyWith(
          LanguageDto value, $Res Function(LanguageDto) then) =
      _$LanguageDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id, Map<String, dynamic> translations});
}

/// @nodoc
class _$LanguageDtoCopyWithImpl<$Res> implements $LanguageDtoCopyWith<$Res> {
  _$LanguageDtoCopyWithImpl(this._value, this._then);

  final LanguageDto _value;
  // ignore: unused_field
  final $Res Function(LanguageDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? translations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      translations: translations == freezed
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$LanguageDtoCopyWith<$Res>
    implements $LanguageDtoCopyWith<$Res> {
  factory _$LanguageDtoCopyWith(
          _LanguageDto value, $Res Function(_LanguageDto) then) =
      __$LanguageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id, Map<String, dynamic> translations});
}

/// @nodoc
class __$LanguageDtoCopyWithImpl<$Res> extends _$LanguageDtoCopyWithImpl<$Res>
    implements _$LanguageDtoCopyWith<$Res> {
  __$LanguageDtoCopyWithImpl(
      _LanguageDto _value, $Res Function(_LanguageDto) _then)
      : super(_value, (v) => _then(v as _LanguageDto));

  @override
  _LanguageDto get _value => super._value as _LanguageDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? translations = freezed,
  }) {
    return _then(_LanguageDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      translations: translations == freezed
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageDto extends _LanguageDto {
  _$_LanguageDto(
      {@JsonKey(ignore: true) this.id = '', required this.translations})
      : super._();

  factory _$_LanguageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final Map<String, dynamic> translations;

  @override
  String toString() {
    return 'LanguageDto(id: $id, translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.translations, translations) ||
                const DeepCollectionEquality()
                    .equals(other.translations, translations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(translations);

  @JsonKey(ignore: true)
  @override
  _$LanguageDtoCopyWith<_LanguageDto> get copyWith =>
      __$LanguageDtoCopyWithImpl<_LanguageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageDtoToJson(this);
  }
}

abstract class _LanguageDto extends LanguageDto {
  factory _LanguageDto(
      {@JsonKey(ignore: true) String id,
      required Map<String, dynamic> translations}) = _$_LanguageDto;
  _LanguageDto._() : super._();

  factory _LanguageDto.fromJson(Map<String, dynamic> json) =
      _$_LanguageDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get translations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageDtoCopyWith<_LanguageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
