import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get notImplemented => 'Non implementato';

  @override
  String get error => 'Errore';

  @override
  String get cancel => 'Annulla';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get sendLink => 'Invia link';

  @override
  String get resetLinkSent => 'Email per il reset della password inviata con successo';
}
