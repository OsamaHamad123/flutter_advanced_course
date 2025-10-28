import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:doc_doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Osama', style: AppTextStyle.font18DarkBlueBold),
            SizedBox(height: 4),
            Text(
              'How are you feeling today?',
              style: AppTextStyle.font12GreyRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManegar.softLight,
          child: SvgPicture.asset('assets/svgs/alert_home_notification.svg'),
        ),
      ],
    );
  }
}
