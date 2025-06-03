import 'package:freezed_annotation/freezed_annotation.dart';

enum LanguagesDigitalInlEnum {
  @JsonValue("en")
  en(value: 'es'),
  @JsonValue("es")
  es(value: 'es'),
  @JsonValue("fr")
  fr(value: 'fr'),
  @JsonValue("hi")
  hi(value: 'hi'),
  @JsonValue("it")
  it(value: 'it'),
  @JsonValue("ja")
  ja(value: 'ja'),
  @JsonValue("pt")
  pt(value: 'pt'),
  @JsonValue("ru")
  ru(value: 'ru'),
  @JsonValue("zh-Hani")
  zhHani(value: 'zh-Hani'),
  ;

  final String value;
  const LanguagesDigitalInlEnum({required this.value});
}
