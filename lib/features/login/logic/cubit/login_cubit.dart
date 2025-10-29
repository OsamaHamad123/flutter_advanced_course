import 'package:doc_doc_app/core/helpers/constance.dart';
import 'package:doc_doc_app/core/helpers/sheard_pref_helper.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/login/data/models/login_request_body_model.dart';
import 'package:doc_doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(LoginState.loading());

    final response = await loginRepo.login(
      LoginRequestBodyModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) async {
        await saveUserToken(data.userDate!.token ?? '');
        emit(LoginState.success(data));
      },
      failure: (error) {
        // emit(LoginState.failure(feilure: error.ApiErrorModel.message));
        emit(LoginState.failure(feilure: error.toString()));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecureData(SharedPrefKeys.userTokenKey, token);
    DioFactory.setTokenInToHeaderAfterLogin(token);
  }
}
