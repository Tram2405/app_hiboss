
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    super.key,
    this.label1,
    this.label2,
  });
  final String? label1;
  final String? label2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: label1, style: AppStyle.h16Normal),
          const WidgetSpan(child: SizedBox(width: 8.0)),
          TextSpan(
              text: label2,
              style: AppStyle.h16Normal.copyWith(color: AppColor.red)),
        ],
      ),
    );
  }
}
