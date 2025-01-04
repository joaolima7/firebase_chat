import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_chat/src/features/auth/data/datasources/datasources/auth_datasource.dart';
import 'package:firebase_chat/src/features/auth/domain/entities/user.entity.dart';

class AuthDataSourceApiImp implements AuthDataSource {
  final _duration = const Duration(seconds: 1);

  @override
  Future<Either<Exception, bool>> checkAccountCreated(String email) async {
    await Future.delayed(_duration);
    try {
      return const Right(false);
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, UserEntity>> login(UserEntity user) async {
    await Future.delayed(_duration);
    try {
      return Right(UserEntity(id: "id", name: "name", email: "email", imageURL: "imageURL"));
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, UserEntity>> logout(UserEntity user) async {
    await Future.delayed(_duration);
    try {
      return Right(UserEntity(id: "id", name: "name", email: "email", imageURL: "imageURL"));
    } on DioException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, UserEntity>> signUp(UserEntity user) async {
    await Future.delayed(_duration);
    try {
      return Right(UserEntity(id: "id", name: "name", email: "email", imageURL: "imageURL"));
    } on DioException catch (e) {
      return Left(e);
    }
  }
}
