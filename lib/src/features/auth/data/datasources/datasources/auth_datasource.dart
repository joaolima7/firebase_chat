import 'package:dartz/dartz.dart';
import '../../../domain/entities/user.entity.dart';

abstract class AuthDataSource {
  Future<Either<Exception, UserEntity>> login(UserEntity user);
  Future<Either<Exception, UserEntity>> signUp(UserEntity user);
  Future<Either<Exception, UserEntity>> checkAccountCreated(UserEntity user);
}
