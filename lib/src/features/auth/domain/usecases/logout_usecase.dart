import 'package:dartz/dartz.dart';
import 'package:firebase_chat/src/features/auth/domain/entities/user.entity.dart';

import '../repositories/auth_repository.dart';

class LogoutUseCase {
  LogoutUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  Future<Either<Exception, UserEntity>> call(UserEntity user) async {
    return await _authRepository.logout(user);
  }
}
