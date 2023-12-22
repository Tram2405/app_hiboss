import 'package:app_hiboss/models/profile_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardProfilePage extends StatelessWidget {
  const CardProfilePage({
    super.key,
    this.onTap,
    required this.profile,
    required this.textColor,
  });

  final Function()? onTap;
  final ProfileModel profile;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: AppColor.white,
        ),
        child: Row(
          children: [
            SvgPicture.asset(profile.icon ?? ''),
            const SizedBox(width: 20.0),
            Expanded(
                child: Text(
              profile.title ?? '',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            )),
            Row(
              children: [
                SvgPicture.asset(profile.iconBack ?? ''),
              ],
            )
          ],
        ),
      ),
    );
  }
}
