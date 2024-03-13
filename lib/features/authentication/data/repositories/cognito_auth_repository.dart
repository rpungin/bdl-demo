import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:bdl_demo/features/authentication/domain/entities/user.dart';
import 'package:bdl_demo/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CognitoAuthRepository implements AuthRepository {
  final _streamController = StreamController<User?>();
  String? _lastSignedInUserId;
  @override
  Future<void> signIn() async {
    if (_lastSignedInUserId != null) return;
    try {
      final authUser = await Amplify.Auth.getCurrentUser();
      if (authUser.userId == _lastSignedInUserId) {
        return;
      }
      _lastSignedInUserId = authUser.userId;
      final user = User(id: authUser.userId, userName: authUser.username);
      _streamController.add(user);
    } on AuthException {
      _lastSignedInUserId = null;
    }
  }

  @override
  Stream<User?> get currentUserStream {
    return _streamController.stream;
  }

  @override
  Future<AsyncValue> signOut() async {
    try {
      final SignOutResult signOutResult = await Amplify.Auth.signOut();
      if (signOutResult is CognitoCompleteSignOut) {
        _streamController.add(null);
        return const AsyncValue.data(null);
      } else if (signOutResult is CognitoFailedSignOut) {
        safePrint('ERROR signing user out: ${signOutResult.exception.message}');
        return AsyncValue.error(signOutResult.exception, StackTrace.current);
      } else if (signOutResult is CognitoPartialSignOut) {
        if (signOutResult.globalSignOutException != null) {
          safePrint(
              'ERROR signing user out: ${signOutResult.globalSignOutException!.message}');
          return AsyncValue.error(
              signOutResult.globalSignOutException!, StackTrace.current);
        }

        if (signOutResult.hostedUiException != null) {
          safePrint(
              'ERROR signing user out: ${signOutResult.hostedUiException!.message}');
          return AsyncValue.error(
              signOutResult.hostedUiException!, StackTrace.current);
        }

        if (signOutResult.revokeTokenException != null) {
          safePrint(
              'ERROR signing user out: ${signOutResult.revokeTokenException!.message}');
          return AsyncValue.error(
              signOutResult.revokeTokenException!, StackTrace.current);
        }
        safePrint('ERROR signing user out: $signOutResult');
        return AsyncValue.error(signOutResult, StackTrace.current);
      } else {
        safePrint('ERROR signing user out: $signOutResult');
        return AsyncValue.error(signOutResult, StackTrace.current);
      }
    } catch (e, stackTrace) {
      safePrint('Could not retrieve current user: $e');
      return AsyncValue.error(e, stackTrace);
    }
  }
}
