import 'package:bdl_demo/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignOutUseCase {
  final AuthRepository _authRepository;

  SignOutUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  Future<AsyncValue> call() => _authRepository.signOut();
}
