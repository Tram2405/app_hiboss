import 'package:app_hiboss/components/buttons/hiboss_botton.dart';
import 'package:app_hiboss/components/buttons/hiboss_botton1.dart';
import 'package:app_hiboss/models/upgrade_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
    required this.onTap,
    required this.upgrade,
  });
  final Function()? onTap;
  final UpgardeModel upgrade;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(upgrade.image ?? ''), fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24.0)
            .copyWith(top: 28.0, bottom: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(upgrade.title ?? '', style: const TextStyle(fontWeight: FontWeight.w900, color: AppColor.white, fontSize: 18.0),),
                const Spacer(),
                Text(upgrade.fee ?? '', style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: AppColor.white),),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 147.0 - 24.0),
              child: Text(upgrade.description ?? '', style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: AppColor.white),),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: HiBossBotton1.small(text: 'Xem gói'),
            ),
          ],
        ),
      ),
    );
  }
}
