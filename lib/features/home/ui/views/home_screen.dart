import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: FontStyles.font16WhiteSemiBold),
        backgroundColor: ColorsManegar.mainBlue,
      ),
      body: Center(
        child: Text('Home Screen', style: FontStyles.font24blueBold),
      ),
    );
  }
}
