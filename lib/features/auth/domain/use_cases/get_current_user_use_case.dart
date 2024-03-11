import 'package:bdl_demo/features/auth/domain/entities/user.dart';
import 'package:bdl_demo/features/auth/domain/repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository _repository;

  GetCurrentUserUseCase({required AuthRepository repository})
      : _repository = repository;

  Stream<User?> call() => _repository.currentUserStream;
}
