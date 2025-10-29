import 'package:doc_doc_app/core/di/dependency_injection.dart';
import 'package:doc_doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_doc_app/features/home/ui/views/home_screen.dart';
import 'package:doc_doc_app/features/login/logic/cubit/login_cubit.dart'
    show LoginCubit;
import 'package:doc_doc_app/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doc_doc_app/features/sign_up/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routers.dart';
import 'package:doc_doc_app/features/onboarding/onboarding_screen.dart';
import 'package:doc_doc_app/features/login/ui/view/login_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
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
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            // Create the HomeCubit here. We intentionally DO NOT call
            // getSpecialization() at creation time to avoid timing issues.
            // The HomeScreen will call `getSpecialization()` in its
            // `initState`, guaranteeing the token (saved during login)
            // is available before the request is made.
            create: (context) => HomeCubit(getit()),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this path')),
          ),
        );
    }
  }
}
