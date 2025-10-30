import 'package:bloc/bloc.dart';
import 'package:doc_doc_app/core/networking/api_result.dart';
import 'package:doc_doc_app/features/sign_up/data/models/signup_request_body_model.dart';
import 'package:doc_doc_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_state.dart';
import 'package:flutter/cupertino.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo signUpRepo;
  SignupCubit(this.signUpRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future emitSignupStates() async {
    emit(SignupState.signupLoading());

    final response = await signUpRepo.signUp(
      SignupRequestBodyModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        gender: 0,
        passwordConfirmation: passwordConfirmation.text,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.signupSuccess(signupResponse));
      },
      failure: (apiErrorModel) {
        emit(SignupState.signupError(apiErrorModel: apiErrorModel));
      },
    );
  }
}
