import 'package:app_hiboss/components/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarLogin extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLogin({super.key,  this.image, required this.title, this.icon});
  final String title;
  final String? image;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0)
          .copyWith(top: MediaQuery.of(context).padding.top + 8.0),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SvgPicture.asset(Assets.images.loginLogo),
          SvgPicture.asset(image ?? ''),
          const SizedBox(height: 31.0),
          Text(
            title,
            style: AppStyle.h20Normal,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 120);
}
