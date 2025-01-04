import 'package:dartz/dartz.dart';
import 'package:firebase_chat/src/features/auth/data/datasources/datasources/auth_datasource.dart';
import 'package:firebase_chat/src/features/auth/domain/entities/user.entity.dart';
import 'package:firebase_chat/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({
    required AuthDataSource authDataSource,
  }) : _authDataSource = authDataSource;

  final AuthDataSource _authDataSource;

  @override
  Future<Either<Exception, bool>> checkAccountCreated(String email) async {
    return await _authDataSource.checkAccountCreated(email);
  }

  @override
  Future<Either<Exception, UserEntity>> login(UserEntity user) async {
    return await _authDataSource.login(user);
  }

  @override
  Future<Either<Exception, UserEntity>> logout(UserEntity user) async {
    return await _authDataSource.logout(user);
  }

  @override
  Future<Either<Exception, UserEntity>> signUp(UserEntity user) async {
    return await _authDataSource.signUp(user);
  }
}
