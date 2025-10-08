import 'package:doc_doc_app/core/di/dependency_injection.dart';
import 'package:doc_doc_app/core/routing/app_router.dart' show AppRouter;
import 'package:doc_doc_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
// end main