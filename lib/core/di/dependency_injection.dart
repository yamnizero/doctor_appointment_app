import 'package:dio/dio.dart';
import 'package:doctoe_appointment_app/core/network/api_service.dart';
import 'package:doctoe_appointment_app/core/network/dio_factory.dart';
import 'package:doctoe_appointment_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctoe_appointment_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void>  setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  
  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}