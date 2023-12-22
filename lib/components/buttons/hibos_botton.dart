import 'package:flutter/material.dart';

class HiBossBotton12 extends StatelessWidget {
   HiBossBotton12({
    super.key,
    required this.text,
    required this.color,
    this.fontSize = 13.0 ,
    required this.padding,
    this.onPressed,
    required this.textColor, 
  });


  final VoidCallback? onPressed;
  final String text;
  final Color textColor;
  final Color color;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      child: InkWell(
        // borderRadius: borderRadius,
        onTap: onPressed,
        child: Ink(
          padding: padding,
          width: 100.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
