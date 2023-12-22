
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

//nút hay text filed nên sử lý chức năng bên này
class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({
    super.key,
    this.controller,
    this.hintext,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    this.textInputAction,
    this.onChanged,
    this.validator,
  });

  final TextEditingController? controller;
  final String? hintext;
  final BorderRadius borderRadius;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator; // 2

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool _isCheck = true;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //chức năng thì viết trong này , giao diện riêng thì custom
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            12.0), // Điều chỉnh giá trị theo nhu cầu của bạn
        color: AppColor.ngocbich,
      ),
      child: TextFormField(
        obscureText: _isCheck,
        style: AppStyle.h16Normal,
        decoration: InputDecoration(
          hintText: widget.hintext,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15.0),
          hintStyle: AppStyle.h14Normal.copyWith(color: AppColor.grey),
          suffixIcon: GestureDetector(
            onTap: () {
              _isCheck = !_isCheck;
              setState(() {});
            },
            child: Icon(
              _isCheck == false ? Icons.visibility : Icons.visibility_off,
              size: 20.0,
            ),
          ),
        ),
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }
}
