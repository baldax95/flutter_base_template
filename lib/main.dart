import 'package:flutter/material.dart';
import 'src/app_bootstrap.dart';
import 'src/exceptions/async_error_logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load .env file
  await dotenv.load();

  // Create the ProviderContainer with the observers to track async errors
  final container = ProviderContainer(
    observers: [AsyncErrorLogger()],
  );

  // Create the AppBootstrap instance and initialise the app by performing the following steps:
  // - Set global error handlers
  // - Configure date formatting for localisation
  // - Apply the URL strategy to remove the ‘#’ symbol (if in web mode)
  final appBootstrap = AppBootstrap();
  await appBootstrap.initializeApp(container);

  // Start the app
  runApp(
    appBootstrap.createRootWidget(container: container),
  );
}
