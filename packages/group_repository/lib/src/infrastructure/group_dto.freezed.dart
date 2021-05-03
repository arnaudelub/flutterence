// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupDto _$GroupDtoFromJson(Map<String, dynamic> json) {
  return _GroupDto.fromJson(json);
}

/// @nodoc
class _$GroupDtoTearOff {
  const _$GroupDtoTearOff();

  _GroupDto call(
      {@JsonKey(ignore: true)
          String id = '',
      required String name,
      @JsonKey(name: 'country_id')
          required String countryId,
      @JsonKey(name: 'sub_groups')
          required List<String?> subGroups,
      @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
          required List<Member?> members,
      required List<String?> events,
      required List<String?> topics,
      @JsonKey(name: 'is_main_group')
          required bool isMainGroup,
      @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
          required DateTime creationDate,
      @JsonKey(name: 'main_group_id')
          String? mainGroupId,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required FieldValue updateDate,
      String? city,
      String? picture}) {
    return _GroupDto(
      id: id,
      name: name,
      countryId: countryId,
      subGroups: subGroups,
      members: members,
      events: events,
      topics: topics,
      isMainGroup: isMainGroup,
      creationDate: creationDate,
      mainGroupId: mainGroupId,
      updateDate: updateDate,
      city: city,
      picture: picture,
    );
  }

  GroupDto fromJson(Map<String, Object> json) {
    return GroupDto.fromJson(json);
  }
}

/// @nodoc
const $GroupDto = _$GroupDtoTearOff();

/// @nodoc
mixin _$GroupDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  String get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_groups')
  List<String?> get subGroups => throw _privateConstructorUsedError;
  @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
  List<Member?> get members => throw _privateConstructorUsedError;
  List<String?> get events => throw _privateConstructorUsedError;
  List<String?> get topics => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main_group')
  bool get isMainGroup => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      fromJson: GroupDto._dateTimeFromTimestamp,
      toJson: GroupDto._timestampFromDateTime)
  DateTime get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_group_id')
  String? get mainGroupId => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  FieldValue get updateDate => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDtoCopyWith<GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDtoCopyWith<$Res> {
  factory $GroupDtoCopyWith(GroupDto value, $Res Function(GroupDto) then) =
      _$GroupDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String name,
      @JsonKey(name: 'country_id')
          String countryId,
      @JsonKey(name: 'sub_groups')
          List<String?> subGroups,
      @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
          List<Member?> members,
      List<String?> events,
      List<String?> topics,
      @JsonKey(name: 'is_main_group')
          bool isMainGroup,
      @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
          DateTime creationDate,
      @JsonKey(name: 'main_group_id')
          String? mainGroupId,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          FieldValue updateDate,
      String? city,
      String? picture});
}

/// @nodoc
class _$GroupDtoCopyWithImpl<$Res> implements $GroupDtoCopyWith<$Res> {
  _$GroupDtoCopyWithImpl(this._value, this._then);

  final GroupDto _value;
  // ignore: unused_field
  final $Res Function(GroupDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? subGroups = freezed,
    Object? members = freezed,
    Object? events = freezed,
    Object? topics = freezed,
    Object? isMainGroup = freezed,
    Object? creationDate = freezed,
    Object? mainGroupId = freezed,
    Object? updateDate = freezed,
    Object? city = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      subGroups: subGroups == freezed
          ? _value.subGroups
          : subGroups // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member?>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      isMainGroup: isMainGroup == freezed
          ? _value.isMainGroup
          : isMainGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mainGroupId: mainGroupId == freezed
          ? _value.mainGroupId
          : mainGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GroupDtoCopyWith<$Res> implements $GroupDtoCopyWith<$Res> {
  factory _$GroupDtoCopyWith(_GroupDto value, $Res Function(_GroupDto) then) =
      __$GroupDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String name,
      @JsonKey(name: 'country_id')
          String countryId,
      @JsonKey(name: 'sub_groups')
          List<String?> subGroups,
      @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
          List<Member?> members,
      List<String?> events,
      List<String?> topics,
      @JsonKey(name: 'is_main_group')
          bool isMainGroup,
      @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
          DateTime creationDate,
      @JsonKey(name: 'main_group_id')
          String? mainGroupId,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          FieldValue updateDate,
      String? city,
      String? picture});
}

/// @nodoc
class __$GroupDtoCopyWithImpl<$Res> extends _$GroupDtoCopyWithImpl<$Res>
    implements _$GroupDtoCopyWith<$Res> {
  __$GroupDtoCopyWithImpl(_GroupDto _value, $Res Function(_GroupDto) _then)
      : super(_value, (v) => _then(v as _GroupDto));

  @override
  _GroupDto get _value => super._value as _GroupDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? subGroups = freezed,
    Object? members = freezed,
    Object? events = freezed,
    Object? topics = freezed,
    Object? isMainGroup = freezed,
    Object? creationDate = freezed,
    Object? mainGroupId = freezed,
    Object? updateDate = freezed,
    Object? city = freezed,
    Object? picture = freezed,
  }) {
    return _then(_GroupDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      subGroups: subGroups == freezed
          ? _value.subGroups
          : subGroups // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member?>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      isMainGroup: isMainGroup == freezed
          ? _value.isMainGroup
          : isMainGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mainGroupId: mainGroupId == freezed
          ? _value.mainGroupId
          : mainGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupDto extends _GroupDto {
  _$_GroupDto(
      {@JsonKey(ignore: true)
          this.id = '',
      required this.name,
      @JsonKey(name: 'country_id')
          required this.countryId,
      @JsonKey(name: 'sub_groups')
          required this.subGroups,
      @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
          required this.members,
      required this.events,
      required this.topics,
      @JsonKey(name: 'is_main_group')
          required this.isMainGroup,
      @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
          required this.creationDate,
      @JsonKey(name: 'main_group_id')
          this.mainGroupId,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required this.updateDate,
      this.city,
      this.picture})
      : super._();

  factory _$_GroupDto.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'country_id')
  final String countryId;
  @override
  @JsonKey(name: 'sub_groups')
  final List<String?> subGroups;
  @override
  @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
  final List<Member?> members;
  @override
  final List<String?> events;
  @override
  final List<String?> topics;
  @override
  @JsonKey(name: 'is_main_group')
  final bool isMainGroup;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: GroupDto._dateTimeFromTimestamp,
      toJson: GroupDto._timestampFromDateTime)
  final DateTime creationDate;
  @override
  @JsonKey(name: 'main_group_id')
  final String? mainGroupId;
  @override
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  final FieldValue updateDate;
  @override
  final String? city;
  @override
  final String? picture;

  @override
  String toString() {
    return 'GroupDto(id: $id, name: $name, countryId: $countryId, subGroups: $subGroups, members: $members, events: $events, topics: $topics, isMainGroup: $isMainGroup, creationDate: $creationDate, mainGroupId: $mainGroupId, updateDate: $updateDate, city: $city, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.subGroups, subGroups) ||
                const DeepCollectionEquality()
                    .equals(other.subGroups, subGroups)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)) &&
            (identical(other.topics, topics) ||
                const DeepCollectionEquality().equals(other.topics, topics)) &&
            (identical(other.isMainGroup, isMainGroup) ||
                const DeepCollectionEquality()
                    .equals(other.isMainGroup, isMainGroup)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.mainGroupId, mainGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.mainGroupId, mainGroupId)) &&
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality()
                    .equals(other.updateDate, updateDate)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(subGroups) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(events) ^
      const DeepCollectionEquality().hash(topics) ^
      const DeepCollectionEquality().hash(isMainGroup) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(mainGroupId) ^
      const DeepCollectionEquality().hash(updateDate) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(picture);

  @JsonKey(ignore: true)
  @override
  _$GroupDtoCopyWith<_GroupDto> get copyWith =>
      __$GroupDtoCopyWithImpl<_GroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupDtoToJson(this);
  }
}

abstract class _GroupDto extends GroupDto {
  factory _GroupDto(
      {@JsonKey(ignore: true)
          String id,
      required String name,
      @JsonKey(name: 'country_id')
          required String countryId,
      @JsonKey(name: 'sub_groups')
          required List<String?> subGroups,
      @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
          required List<Member?> members,
      required List<String?> events,
      required List<String?> topics,
      @JsonKey(name: 'is_main_group')
          required bool isMainGroup,
      @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
          required DateTime creationDate,
      @JsonKey(name: 'main_group_id')
          String? mainGroupId,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required FieldValue updateDate,
      String? city,
      String? picture}) = _$_GroupDto;
  _GroupDto._() : super._();

  factory _GroupDto.fromJson(Map<String, dynamic> json) = _$_GroupDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_id')
  String get countryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sub_groups')
  List<String?> get subGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
  List<Member?> get members => throw _privateConstructorUsedError;
  @override
  List<String?> get events => throw _privateConstructorUsedError;
  @override
  List<String?> get topics => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_main_group')
  bool get isMainGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: GroupDto._dateTimeFromTimestamp,
      toJson: GroupDto._timestampFromDateTime)
  DateTime get creationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'main_group_id')
  String? get mainGroupId => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  FieldValue get updateDate => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get picture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupDtoCopyWith<_GroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}
