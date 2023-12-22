import 'package:app_hiboss/gen/assets.gen.dart';

class IntrolModel {
  String? image;
  String? title;
  String? subTitle;
  IntrolModel();
}

List<IntrolModel> listIntrols = [
  IntrolModel()
    ..image = Assets.images.introl1.path
    ..title = 'Đa dạng, tiện ích và phù hợp'
    ..subTitle =
        'Sản phẩm phong phú, bán hàng hiệu quả và tiết kiệm thời gian.',
  IntrolModel()
    ..image = Assets.images.introl2.path
    ..title = 'Linh hoạt và tức thời'
    ..subTitle =
        'Số liệu doanh thu, tiến trình đơn hàng được tổng hợp, hiển thị nhanh chóng.',
  IntrolModel()
    ..image = Assets.images.introl3.path
    ..title = 'Chủ động và tự do'
    ..subTitle = 'Doanh nghiệp chủ động quản lý. Cá nhân chủ động bán hàng.'
];
