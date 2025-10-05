import 'package:doc_doc_app/core/routing/app_router.dart' show AppRouter;
import 'package:doc_doc_app/core/routing/routers.dart';
import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'features/login/ui/login_screen.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        initialRoute: Routes.onboarding,

        theme: ThemeData(
          primaryColor: ColorsManegar.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const LoginScreen(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
