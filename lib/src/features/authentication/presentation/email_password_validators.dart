import '../../../l10n/string_extensions.dart';

import 'string_validators.dart';

mixin EmailPasswordValidators {
  final StringValidators emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidators passwordSubmitValidator = PasswordSubmitRegexValidator();

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(String password) {
    return passwordSubmitValidator.isValid(password);
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText = email.isEmpty
        ? "L'email non può essere vuota".hardcoded
        : 'Formato email non valido'.hardcoded;
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password) {
    final bool showErrorText = !canSubmitPassword(password);
    final String errorText = password.isEmpty
        ? 'La password non può essere vuota'.hardcoded
        : 'Password non valida'.hardcoded;
    return showErrorText ? errorText : null;
  }
}
