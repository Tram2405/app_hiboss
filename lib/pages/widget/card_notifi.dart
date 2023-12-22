import 'package:app_hiboss/models/notification_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class CardNotification extends StatelessWidget {
  const CardNotification({
    super.key,
    this.onTap,
    required this.notification,
  });

  final Function()? onTap;
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: (notification.status ?? false) ? Colors.white : AppColor.primary,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(notification.avt ?? '', width: 60.0, height: 60.0,),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      if (notification.name != null)
                        TextSpan(
                          text: notification.name!,
                          style: const TextStyle(
                            color: AppColor.black1,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      if (notification.isOrder == true)
                        const TextSpan(text: '\n'),
                      TextSpan(
                        text: notification.description ?? '',
                        style: const TextStyle(
                          color: AppColor.black1,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          
                        ),
                        
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  notification.time ?? '',
                  style: const TextStyle(
                    color: AppColor.h696969,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          if (notification.status == false)
            const Padding(
              padding: EdgeInsets.only(top: 7.0),
              child: CircleAvatar(
                radius: 3.5,
                backgroundColor: AppColor.hF53434,
              ),
            )
        ],
      ),
    );
  }
}
