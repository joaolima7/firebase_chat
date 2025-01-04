part of 'injection.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.I;

    //DataSources
    getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceApiImp());

    //Repositories
    getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(authDataSource: getIt()));

    //UseCases
    getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(authRepository: getIt()));
    getIt.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(authRepository: getIt()));
    getIt.registerLazySingleton<CheckAccountCreatedUsecase>(() => CheckAccountCreatedUsecase(authRepository: getIt()));
    getIt.registerLazySingleton<LogoutUseCase>(() => LogoutUseCase(authRepository: getIt()));
  }
}
