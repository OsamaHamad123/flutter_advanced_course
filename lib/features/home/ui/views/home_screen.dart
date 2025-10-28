import 'package:doc_doc_app/features/home/ui/views/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const HomeTopBar()],
          ),
        ),
      ),
    );
  }
}
