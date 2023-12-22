import 'package:app_hiboss/models/supplier_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class CardSupplier extends StatelessWidget {
  const CardSupplier({
    super.key,
    required this.supplier,
    this.onPressed,
  });
  final SupplierModel supplier;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:AppColor.h696969.withOpacity(0.1), 
                  offset: const Offset(0, 4),
                  blurRadius: 9.0,
                  // spreadRadius: 3.0,
                ),
              ],
              color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
          child: Column(
            children: [
              Image.asset(
                supplier.logo ?? '',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 12.0),
              Text(supplier.nameCompany ?? '', textAlign: TextAlign.center),
            ],
          )),
    );
  }
}
