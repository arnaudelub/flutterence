import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

@freezed
class Language with _$Language {
  factory Language({
    required String id,
    required Map<String, dynamic> translations,
  }) = _Langue;

  factory Language.empty() => Language(
        id: '',
        translations: {},
      );
}
