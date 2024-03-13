import 'package:bdl_demo/features/authentication/domain/entities/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthRepository {
  Future<void> signIn();
  Stream<User?> get currentUserStream;
  Future<AsyncValue> signOut();
}
