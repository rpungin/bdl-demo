import 'package:bdl_demo/features/authentication/domain/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository _authRepository;

  SignInUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  Future<void> call() => _authRepository.signIn();
}
