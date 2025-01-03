import 'package:dartz/dartz.dart';
import 'package:firebase_chat/src/features/auth/data/datasources/datasources/auth_datasource.dart';
import 'package:firebase_chat/src/features/auth/domain/entities/user.entity.dart';

class AuthDataSourceApiImp implements AuthDataSource {
  @override
  Future<Either<Exception, UserEntity>> checkAccountCreated(UserEntity user) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserEntity>> login(UserEntity user) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, UserEntity>> signUp(UserEntity user) async {
    throw UnimplementedError();
  }
}
