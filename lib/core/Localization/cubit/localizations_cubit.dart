import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'localizations_state.dart';

class LocalizationsCubit extends Cubit<LocalizationsState> {
  LocalizationsCubit() : super(SelectedLocale(Locale('ar')));

  void toArabic() => emit(SelectedLocale(Locale('ar')));
  void toEnglish() => emit(SelectedLocale(Locale('en')));
}
