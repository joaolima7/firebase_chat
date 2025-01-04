import 'package:firebase_chat/src/features/auth/data/datasources/api/auth_datasource_api_imp.dart';
import 'package:firebase_chat/src/features/auth/data/datasources/datasources/auth_datasource.dart';
import 'package:firebase_chat/src/features/auth/data/repositories/auth_repository_imp.dart';
import 'package:firebase_chat/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:firebase_chat/src/features/auth/domain/usecases/check_account_created_usecase.dart';
import 'package:firebase_chat/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:firebase_chat/src/features/auth/domain/usecases/logout_usecase.dart';
import 'package:firebase_chat/src/features/auth/domain/usecases/signup_usecase.dart';
import 'package:get_it/get_it.dart';

part 'injection.main.dart';
