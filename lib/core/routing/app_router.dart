import 'package:doc_doc_app/core/di/dependency_injection.dart';
import 'package:doc_doc_app/features/home/ui/views/home_screen.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart'
    show LoginCubit;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routers.dart';
import 'package:doc_doc_app/features/onboarding/onboarding_screen.dart';
import 'package:doc_doc_app/features/login/ui/view/login_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No route defined'))),
        );
    }
  }
}
