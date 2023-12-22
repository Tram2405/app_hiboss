
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class DotPage extends StatelessWidget {
  const DotPage({super.key, required this.itemCount, required this.current});
  final int itemCount;
  final int current;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.0,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: AppColor.blue
                    .withOpacity(current == index ? 1 : 0.5),
                shape: BoxShape.circle,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 8.0);
          },
          itemCount: itemCount),
    );
  }
}
