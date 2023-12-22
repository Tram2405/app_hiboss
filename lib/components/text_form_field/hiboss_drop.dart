
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class HiBossDropFormField extends StatelessWidget {
  const HiBossDropFormField({
    super.key,
    this.selected = '0',
    this.items,
    this.onChanged,
  });
  final String? selected;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selected,
      style: AppStyle.h16Normal,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.ngocbich,
        contentPadding: const EdgeInsets.all(15.0),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0)),
      ),
      dropdownColor: AppColor.ngocbich,
      borderRadius: BorderRadius.circular(8.0),
      elevation: 4,
      items: items,
      onChanged: onChanged,
    );
  }
}
