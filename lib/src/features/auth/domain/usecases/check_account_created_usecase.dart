import 'package:dartz/dartz.dart';
import 'package:firebase_chat/src/features/auth/domain/entities/user.entity.dart';
import 'package:firebase_chat/src/features/auth/domain/repositories/auth_repository.dart';

class CheckAccountCreatedUsecase {
  CheckAccountCreatedUsecase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  Future<Either<Exception, UserEntity>> call(UserEntity user) async {
    return await _authRepository.checkAccountCreated(user);
  }
}
