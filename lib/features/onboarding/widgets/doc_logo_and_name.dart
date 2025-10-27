import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Replace with your logo image
        SvgPicture.asset('assets/svgs/docdoc_logo.svg', height: 50, width: 50),
        const SizedBox(width: 10),
        const Text(
          'Doc App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
