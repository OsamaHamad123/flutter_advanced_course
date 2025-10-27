import 'package:doc_doc_app/features/login/ui/login_screen.dart';
import 'package:doc_doc_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routers.dart';
import 'core/theming/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(); // instance واحدة

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: ColorsManegar.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.onboarding,
          onGenerateRoute: AppRouter().onGenerateRoute,

          onUnknownRoute: appRouter.onGenerateRoute, // لالتقاط أي اسم غريب
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
