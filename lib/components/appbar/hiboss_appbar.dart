
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiBossAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HiBossAppBar({
    super.key,
    this.leftPressed,
    this.rightPressed,
    this.leftIcon,
    this.rightIcon,
    required this.title,
    this.image,
    this.colorText,
  });

  final Function()? leftPressed;
  final Function()? rightPressed;
  final String? leftIcon;
  final String? rightIcon;
  final String? image;
  final String title;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //Lấy hết màn hìn
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(
        // image: AssetImage('assets/images/app_bar.png'),
        image: AssetImage(image ?? ''),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(
            top: MediaQuery.of(context).padding.top + 6.0, bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftIcon != null
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(leftIcon!),
                  )
                : const SizedBox(width: 22.0),
            Text(
              title,
              style:  TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                // color: AppColor.white,
                color: colorText,
              ),
            ),
            rightIcon != null
                ? GestureDetector(
                    child: SvgPicture.asset(rightIcon!),
                  )
                : const SizedBox(
                    width: 22.0,
                  )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
