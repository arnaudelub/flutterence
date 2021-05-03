// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Langue call(
      {required String id, required Map<String, dynamic> translations}) {
    return _Langue(
      id: id,
      translations: translations,
    );
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get translations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call({String id, Map<String, dynamic> translations});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

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
abstract class _$LangueCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LangueCopyWith(_Langue value, $Res Function(_Langue) then) =
      __$LangueCopyWithImpl<$Res>;
  @override
  $Res call({String id, Map<String, dynamic> translations});
}

/// @nodoc
class __$LangueCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LangueCopyWith<$Res> {
  __$LangueCopyWithImpl(_Langue _value, $Res Function(_Langue) _then)
      : super(_value, (v) => _then(v as _Langue));

  @override
  _Langue get _value => super._value as _Langue;

  @override
  $Res call({
    Object? id = freezed,
    Object? translations = freezed,
  }) {
    return _then(_Langue(
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

class _$_Langue implements _Langue {
  _$_Langue({required this.id, required this.translations});

  @override
  final String id;
  @override
  final Map<String, dynamic> translations;

  @override
  String toString() {
    return 'Language(id: $id, translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Langue &&
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
  _$LangueCopyWith<_Langue> get copyWith =>
      __$LangueCopyWithImpl<_Langue>(this, _$identity);
}

abstract class _Langue implements Language {
  factory _Langue(
      {required String id,
      required Map<String, dynamic> translations}) = _$_Langue;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get translations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LangueCopyWith<_Langue> get copyWith => throw _privateConstructorUsedError;
}
