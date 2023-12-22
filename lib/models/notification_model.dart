class NotificationModel {
  String? name;
  String? avt;
  String? description;
  String? time;
  bool? status;
  bool? isOrder;

  NotificationModel();
}

final notifications = [
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi '
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/av1.png'
    ..status = false,
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi '
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt4.png'
    ..status = false,
  NotificationModel()
    ..description = 'Khuyến mãi đặc biệt chỉ trong ngày hôm nay.,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt2.png'
    ..status = true,
  NotificationModel()
    ..description =
        'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,.,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/av3.png'
    ..status = true,
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi '
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt4.png'
    ..status = false,
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi '
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt4.png'
    ..status = false,
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi'
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt4.png'
    ..status = false,
    NotificationModel()
    ..description = 'Khuyến mãi đặc biệt chỉ trong ngày hôm nay.,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt2.png'
    ..status = true,
  NotificationModel()
    ..description =
        'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,.,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/av3.png'
    ..status = true,
  NotificationModel()
    ..name = 'Hồ Thị Mỹ Chi '
    ..description = 'Lorem ipsum dolor sittt amet, consetetur sadipscing elitr,'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/avt4.png'
    ..status = false,
  NotificationModel()
    ..name = 'Đơn hàng thành công '
    ..description = 'Đơn hàng của bạn đã được giao thành công...'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/product 1.png'
    ..isOrder = true
    ..status = false,
    NotificationModel()
    ..name = 'Đơn hàng đang chờ thanh toán '
    ..description = 'Đơn hàng của bạn đang chờ được thanh toán.'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/delivery2 1.png'
    ..isOrder = true
    ..status = false,
    NotificationModel()
    ..name = 'Sự kiện mới sắp diễn ra '
    ..description = 'Scelerisque ac volutpat placerat velit vitae...'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/email 1.png'
    ..isOrder = true
    ..status = false,
  NotificationModel()
    ..name = 'Đơn hàng đã bị huỷ'
    ..description = 'Đơn hàng của bạn đã bị huỷ do quá thời gi.'
    ..time = '1 giờ trước'
    ..avt = 'assets/images/delivery-cancelled 1.png'
    ..isOrder = true
    ..status = true,
];
