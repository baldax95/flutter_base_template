import 'package:flutter/material.dart';
import '../domain/user_profile.dart';

import 'auth_repository.dart';

class FakeAuthRepository with ChangeNotifier implements AuthRepository {
  @override
  Future<UserProfile?> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<void> changePassword(String oldPassword, String newPassword) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<UserProfile?> checkUserToken() {
    // TODO: implement checkUserToken
    throw UnimplementedError();
  }

  @override
  // TODO: implement currentUser
  UserProfile? get currentUser => throw UnimplementedError();

  @override
  // TODO: implement userToken
  String get userToken => throw UnimplementedError();
}
