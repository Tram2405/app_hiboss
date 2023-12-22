import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/components/buttons/hiboss_botton.dart';
import 'package:app_hiboss/models/notification_model.dart';
import 'package:app_hiboss/pages/widget/card_notifi.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: const HiBossAppBar(
          title: 'Thông Báo',
          leftIcon: 'assets/images/back.svg',
          rightIcon: 'assets/images/search.svg',
          colorText: AppColor.white,
          image: 'assets/images/app_bar.png',
        ),
        body: Column(
          children: [
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HiBossBotton(
                  text: 'Tất cả',
                  color: selectedIndex == 0 ? AppColor.blue : AppColor.hF2F2FF,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 8.0),
                  textColor:
                      selectedIndex == 0 ? AppColor.white : AppColor.h696969,
                  onPressed: () => _onTabTapped(0),
                ),
                const SizedBox(width: 8.0),
                HiBossBotton(
                  text: 'Đơn hàng',
                  color: selectedIndex == 1 ? AppColor.blue : AppColor.hF2F2FF,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 8.0),
                  textColor:
                      selectedIndex == 1 ? AppColor.white : AppColor.h696969,
                  onPressed: () => _onTabTapped(1),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 16.0, end: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thông bảo mới',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black1,
                    ),
                  ),
                  Text(
                    'Đánh dấu đã đọc',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blue,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            selectedIndex == 0
                ? Expanded(
                    child: ListView.builder(
                      itemCount: notifications.length,
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        return CardNotification(
                          notification: notification,
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: notifications.where((e) => e.isOrder == true).length,
                     itemBuilder: (context, index) {
                        final notification = notifications.where((e) => e.isOrder == true).toList()[index];
                        return CardNotification(
                          notification: notification,
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
