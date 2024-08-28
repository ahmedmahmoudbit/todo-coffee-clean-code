import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial());

  void changeLanguage(Locale locale) {
    emit(MainState.ChangeLanguage(locale));
  }

  }
