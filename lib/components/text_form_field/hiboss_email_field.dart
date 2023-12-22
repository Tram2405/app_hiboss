
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({
    super.key,
    this.controller,
    this.hintext,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    this.textInputAction,
    this.width,
    this.onChanged,
    this.validator,
  });
   const TextFieldEmail.small({
    super.key,
    this.controller,
    this.hintext,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    this.textInputAction,
    this.width = 11.0,
    this.onChanged,
    this.validator,
    
  });

  final TextEditingController? controller;
  final String? hintext;
  final BorderRadius borderRadius;
  final TextInputAction? textInputAction;
  final double? width;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;// 2

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(
            12.0), // Điều chỉnh giá trị theo nhu cầu của bạn
        color: AppColor.ngocbich,
      ),
      child: TextFormField(
         validator: validator,
        style: AppStyle.h16Normal,
        decoration: InputDecoration(
          
          hintText: hintext,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15.0),
          hintStyle: AppStyle.h14Normal.copyWith(color: AppColor.grey),
        ),
        textInputAction: TextInputAction.next,
        controller: controller,
        onChanged: onChanged,
      ),
    );
  }
}
