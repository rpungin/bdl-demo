import 'package:bdl_demo/features/authentication/domain/entities/user.dart';
import 'package:bdl_demo/features/authentication/domain/repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository _repository;

  GetCurrentUserUseCase({required AuthRepository repository})
      : _repository = repository;

  Stream<User?> call() => _repository.currentUserStream;
}
