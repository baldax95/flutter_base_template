import 'package:flutter/material.dart';

/// Reusable error message widget (just a [Text] with a red color).
class ErrorMessageWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorMessageWidget(
    this.errorMessage, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.red),
    );
  }
}
