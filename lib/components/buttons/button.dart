
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class HbElevatedButton extends StatelessWidget {
  HbElevatedButton({
    super.key,
    this.onPressed,
    Color? color,
    required this.text,
    this.textColor = AppColor.white,
    this.fontSize = 16.0,
    this.icon,
    Color? borderColor,
    this.height = 48.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0),
    BorderRadius? borderRadius,
    this.isLoading,
  })  : color = color ?? AppColor.blue.withOpacity(0.98),
        borderColor = borderColor ?? AppColor.blue.withOpacity(0.98),
        borderRadius = borderRadius ?? BorderRadius.circular(22.0);

  final Function()? onPressed;
  final Color color;
  final String text;
  final Color textColor;
  final double fontSize;
  final Icon? icon;
  final Color borderColor;
  final double height;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // thuộc tính trong này mới giật được
      onTap: (isLoading ?? false) ? null : onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 14.0,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: Border.all(color: borderColor, width: 1.2),
        ),
        child: (isLoading ?? false)
            ? const Center(
                child: SizedBox.square(
                dimension: 26,
                child: CircularProgressIndicator(
                    color: AppColor.white, strokeWidth: 2.2),
              ))
            : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor, // đổi màu text
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
