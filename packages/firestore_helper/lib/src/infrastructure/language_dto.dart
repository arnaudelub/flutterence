import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_helper/src/domain/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_dto.freezed.dart';
part 'language_dto.g.dart';

@freezed
class LanguageDto with _$LanguageDto {
  const LanguageDto._();

  factory LanguageDto({
    @Default('') @JsonKey(ignore: true) String id,
    required Map<String, dynamic> translations,
  }) = _LanguageDto;

  factory LanguageDto.fromJson(Map<String, dynamic> json) =>
      _$LanguageDtoFromJson(json);

  factory LanguageDto.fromFirestore(DocumentSnapshot doc) =>
      LanguageDto.fromJson(doc.data()!).copyWith(id: doc.id);

  Language toDomain() => Language(id: id, translations: translations);
}
