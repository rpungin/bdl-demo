import 'package:bdl_demo/features/authentication/data/repositories/cognito_auth_repository.dart';
import 'package:bdl_demo/features/authentication/domain/entities/user.dart';
import 'package:bdl_demo/features/authentication/domain/repositories/auth_repository.dart';
import 'package:bdl_demo/features/authentication/domain/use_cases/get_current_user_use_case.dart';
import 'package:bdl_demo/features/authentication/domain/use_cases/sign_in_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => CognitoAuthRepository());

final getCurrentUserUseCaseProvider = Provider<GetCurrentUserUseCase>((ref) =>
    GetCurrentUserUseCase(repository: ref.read(authRepositoryProvider)));

final signInUseCasePovider = Provider<SignInUseCase>(
    (ref) => SignInUseCase(authRepository: ref.read(authRepositoryProvider)));

final currentUserProvider = StreamProvider<User?>(
    (ref) => ref.read(getCurrentUserUseCaseProvider).call());
