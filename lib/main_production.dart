import 'package:doc_doc_app/core/di/dependency_injection.dart';
import 'package:doc_doc_app/core/routing/app_router.dart' show AppRouter;
import 'package:doc_doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //to fix text been hidden  bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
