import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/supplier_model.dart';
import 'package:app_hiboss/pages/supplier/card.dart';
import 'package:app_hiboss/pages/supplier/supplier_detail_page.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class SupplierPage extends StatefulWidget {
  const SupplierPage({super.key});

  @override
  State<SupplierPage> createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hF6F8FF,
      appBar: const HiBossAppBar(
        title: 'Danh sách nhà cung cấp',
        leftIcon: 'assets/images/back.svg',
        colorText: AppColor.white,
        image: 'assets/images/app_bar.png',
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16.0),
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: List.generate(suppliers.length, (index) {
          final supplier = suppliers[index];
          return Center(
            child: CardSupplier(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SupplierDetailPage(supplier: supplier),
                  ),
                );
              },
              supplier: supplier,
            ),
          );
        }),
      ),
    );
  }
}
