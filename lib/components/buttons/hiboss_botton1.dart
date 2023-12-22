import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiBossBotton1 extends StatelessWidget {
  HiBossBotton1({
    super.key,
    this.onPressed,
    this.height = 48.0,
    this.color = AppColor.h2AC94D,
    this.borderColor = AppColor.h2AC94D,
    required this.text,
    this.textColor = AppColor.white,
    this.fontSize = 13.0,
    BorderRadius? borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0),
    this.icon, 
    this.iconColor = AppColor.black1,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(20.0);

  HiBossBotton1.small({
    super.key,
    this.onPressed,
    this.height = 48.0,
    this.color = AppColor.white,
    this.borderColor = AppColor.white,
    required this.text,
    this.textColor = AppColor.h2758A0,
    this.fontSize = 15.0,
    BorderRadius? borderRadius,
    this.padding = const EdgeInsets.all(8.0),
    this.icon = 'assets/images/navigate_next.svg', 
    this.iconColor = AppColor.h2758A0, 
  }) : borderRadius = borderRadius ?? BorderRadius.circular(8.0);

  final VoidCallback? onPressed;
  final double height;
  final Color color;
  final Color borderColor;
  final String text;
  final Color textColor;
  final double fontSize;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final String? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Ink(
          padding: padding,
          height: height,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor, width: 1.4),
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, //khong lay phan du
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SvgPicture.asset(
                icon ?? '',
                color: iconColor,
                // ignore: deprecated_member_use
                // color: AppColor.black1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
