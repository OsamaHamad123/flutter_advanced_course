import 'package:doc_doc_app/core/routing/app_router.dart' show AppRouter;
import 'package:doc_doc_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DocApp(appRouter: AppRouter()));
}
