import 'package:doc_doc_app/core/di/dependency_injection.dart';
import 'package:doc_doc_app/core/helpers/constance.dart';
import 'package:doc_doc_app/core/helpers/extentions.dart';
import 'package:doc_doc_app/core/helpers/sheard_pref_helper.dart';
import 'package:doc_doc_app/core/routing/app_router.dart' show AppRouter;
import 'package:doc_doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await checkIfUserLoggedIn();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfUserLoggedIn() async {
  String token =
      await SharedPrefHelper.getSecureData(SharedPrefKeys.userTokenKey) ?? '';
  if (!token.isNullOrEmpty) {
    isLoggedUser = true;
  } else {
    isLoggedUser = false;
  }
}
