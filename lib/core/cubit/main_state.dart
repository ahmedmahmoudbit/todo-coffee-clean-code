part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.ChangeLanguage(Locale locale) = _ChangeLanguage;
}
