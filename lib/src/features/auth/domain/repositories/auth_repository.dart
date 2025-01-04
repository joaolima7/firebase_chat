import 'package:dartz/dartz.dart';
import '../entities/user.entity.dart';

abstract class AuthRepository {
  Future<Either<Exception, UserEntity>> login(UserEntity user);
  Future<Either<Exception, UserEntity>> logout(UserEntity user);
  Future<Either<Exception, UserEntity>> signUp(UserEntity user);
  Future<Either<Exception, bool>> checkAccountCreated(String email);
}
