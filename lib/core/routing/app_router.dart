import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:doc_doc_app/features/onboarding/onboarding_screen.dart';
import 'package:doc_doc_app/features/login/ui/login_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    debugPrint(
      '[Router] onGenerateRoute => "${settings.name}" (len=${settings.name?.length})',
    );
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No route defined'))),
        );
    }
  }
}
