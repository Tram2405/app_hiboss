import 'package:app_hiboss/models/product_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:app_hiboss/utils/app_extension.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.onTap,
    required this.product,
  });

  final Function()? onTap;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.hC4C4C4,
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
        // color: (notification.status ?? false) ? Colors.white : AppColor.primary,
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(product.background ?? '', width: 60.0, height: 60.0,),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  product.name ?? '',
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 22.0),
                Row(
                  children: [
                    if (product.price != null)
                      Text(
                        product.price!.toVnd(),
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    const SizedBox(
                      height: 8.0,
                      width: 8.0,
                    ),
                    // Text(
                    //   (product.priceSale ?? 0).toVnd(),
                    //   style: const TextStyle(
                    //     color: Colors.red,
                    //     fontSize: 12.0,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: (product.priceSale ?? 0).toVnd(),
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const TextSpan(
                            text: '/Khoá',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      'Đã bán: ${product.sole}',
                      style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
