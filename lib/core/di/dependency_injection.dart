import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_services.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  //signup
  getit.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));

  //home
}
// registerFactory : معناها بالتالي كل مرة يتم استخدام هذا الكوبيت يتم انشاء جديد
// registerLazySingleton : اعمل create  لنسخة واحدة وححتاج نفس النسخة عند كل استخدام