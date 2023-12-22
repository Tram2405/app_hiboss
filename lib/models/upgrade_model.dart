import 'package:flutter/material.dart';

class UpgardeModel {
  String? title;
  String? fee;
  String? description;
  String? image;

  UpgardeModel();
}

List<UpgardeModel> upgrades = [
  UpgardeModel()
    ..title = 'START - UP'
    ..description =
        'Liên kết và quản lý các cơ hội kinh doanh đơn giản, tinh gọn'
    ..fee = 'Miễn phí'
    ..image = 'assets/images/startup.png',
  UpgardeModel()
    ..title = 'BASIC'
    ..description =
        'Tăng trưởng doanh thu và tinh gọn các hoạt động nhằm phục vụ nhu cầu khách hàng'
    ..fee = '450.000đ / Tháng'
    ..image = 'assets/images/basic.png',
  UpgardeModel()
    ..title = 'ADVANCE'
    ..description = 'Tăng trưởng đột phá & Xây dựng thương hiệu'
    ..image = 'assets/images/advance.png'
    ..fee = 'LIÊN HỆ',
];
