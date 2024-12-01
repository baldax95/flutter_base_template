import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/user_profile.dart';
import 'fake_auth_repository.dart';

part 'auth_repository.g.dart';

abstract class AuthRepository with ChangeNotifier {
  Future<UserProfile?> signInWithEmailAndPassword(String email, String password);
  Future<void> forgotPassword(String email);
  Future<void> changePassword(String oldPassword, String newPassword);
  Future<void> signOut();
  Future<UserProfile?> checkUserToken();
  UserProfile? get currentUser;
  String get userToken;
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return FakeAuthRepository();
}
