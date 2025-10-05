import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop<T>(result);
  }
}
//فائدة هذه الامتدادات هي تسهيل عملية التنقل بين الشاشات في تطبيق Flutter.
//بدلاً من كتابة Navigator.of(context).pushNamed(...) في كل مرة تحتاج فيها إلى التنقل،
//يمكنك ببساطة استخدام context.pushNamed(...)، مما يجعل الكود أكثر نظافة
//وأقل تكرارًا.