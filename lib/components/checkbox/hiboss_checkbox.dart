
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class HiBossCheckBox extends StatefulWidget {
  const HiBossCheckBox({
    super.key,
    this.onChanged,
  });
  final ValueChanged<bool>? onChanged;
  @override
  State<HiBossCheckBox> createState() => _HiBossCheckBoxState();
}

class _HiBossCheckBoxState extends State<HiBossCheckBox> {
  bool _isCheck = false;

  void _check() {
    _isCheck = !_isCheck;
    widget.onChanged!(_isCheck);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _check,
      child: Container(
        alignment: Alignment.center,
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
            color: _isCheck ? AppColor.white : AppColor.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                width: 1.0, color: _isCheck ? AppColor.grey : AppColor.grey)),
        child: Icon(
          Icons.check,
          color: _isCheck ? AppColor.grey : AppColor.white,
          size: 17.0,
        ),
      ),
    );
  }
}
