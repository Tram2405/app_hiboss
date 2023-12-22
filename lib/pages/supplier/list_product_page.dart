import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/product_model.dart';
import 'package:app_hiboss/pages/widget/card_product.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hF6F8FF,
      appBar: const HiBossAppBar(
        title: 'Danh sách sản phẩm',
        leftIcon: 'assets/images/back.svg',
        image: 'assets/images/app_bar.png',
        colorText: AppColor.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CardProduct(product: rsProducts[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 12.0,
                ),
                itemCount: rsProducts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
