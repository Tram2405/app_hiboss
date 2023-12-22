import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/product_model.dart';
import 'package:app_hiboss/models/supplier_model.dart';
import 'package:app_hiboss/pages/supplier/list_product_page.dart';
import 'package:app_hiboss/pages/widget/card_product.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class SupplierDetailPage extends StatefulWidget {
  const SupplierDetailPage({
    super.key,
    required this.supplier,
    this.product,
  });
  final SupplierModel supplier;
  final ProductModel? product;

  @override
  State<SupplierDetailPage> createState() => _SupplierDetailPageState();
}

class _SupplierDetailPageState extends State<SupplierDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hF6F8FF,
      appBar: const HiBossAppBar(
        title: 'Chi tiết nhà cung cấp',
        leftIcon: 'assets/images/back.svg',
        colorText: AppColor.white,
        image: 'assets/images/app_bar.png',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.h696969.withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 9.0,
                      // spreadRadius: 3.0,
                    ),
                  ],
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        widget.supplier.logo ?? '',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.supplier.nameCompany ?? '',
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lĩnh vực kinh doanh',
                            style: TextStyle(
                              color: AppColor.h636366,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            widget.supplier.relatedFields ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Website',
                            style: TextStyle(
                              color: AppColor.h636366,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(width: 40.0),
                          Expanded(
                            child: Text(
                              widget.supplier.linkWebSite ?? '',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16.0),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Địa chỉ',
                            style: TextStyle(
                              color: AppColor.h636366,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(width: 82.0),
                          Expanded(
                              child: Text(
                            widget.supplier.adress ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0),
                            textAlign: TextAlign.right,
                          )),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mô tả',
                            style: TextStyle(
                              color: AppColor.h636366,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(width: 49.0),
                          Expanded(
                            child: Text(
                              widget.supplier.description ?? '',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16.0),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.h696969.withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 9.0,
                      // spreadRadius: 3.0,
                    ),
                  ],
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sản phẩm của nhà cung cấp',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black1,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CardProduct(product: rsProducts[index]);
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 12.0,
                      ),
                      itemCount: 3,
                    ),
                    const SizedBox(height: 12.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => const ListProduct(),
                      ),);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Xem tất cả',
                            style: TextStyle(
                              color: AppColor.h063782,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Icon(
                            Icons.navigate_next_rounded,
                            color: AppColor.h063782,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
