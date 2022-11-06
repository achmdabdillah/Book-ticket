import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getWidth(15)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(AppLayout.getHeight(10)))),
      child: Row(children: [
        Icon(
          icon,
          color: Color(0xFFBFC2DF),
        ),
        Gap(AppLayout.getWidth(10)),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
