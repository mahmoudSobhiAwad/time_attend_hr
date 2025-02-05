part of 'localizations_cubit.dart';

@immutable
sealed class LocalizationsState {
  final Locale locale;
  LocalizationsState(this.locale);
}

class SelectedLocale extends LocalizationsState {
  SelectedLocale(Locale locale) : super(locale);
}
