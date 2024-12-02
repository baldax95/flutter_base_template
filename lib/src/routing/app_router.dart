import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/data/auth_repository.dart';
import '../features/authentication/presentation/screens/login_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  login,
  home,
}

@riverpod
GoRouter goRouter(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
    refreshListenable: authRepository,
    // TODO: enable redirect
    // redirect: (context, state) {
    //   final user = authRepository.currentUser;
    //   final isLoggedIn = user != null;
    //   final path = state.uri.path;

    //   // Logica di redirect per gestire il login/logout
    //   if (isLoggedIn) {
    //     if (path == '/login') {
    //       return '/';
    //     }
    //   } else {
    //     if (path != "/login") {
    //       return "/login";
    //     }
    //   }
    //   return null;
    // },
    routes: [
      GoRoute(
        path: "/",
        name: AppRoute.home.name,
        // TODO: change with HomeScreen
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text('Title'),
          ),
          body: Center(
            child: Text('Body'),
          ),
        ),
      ),
      GoRoute(
        path: "/login",
        name: AppRoute.login.name,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}
