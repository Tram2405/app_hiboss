import 'package:app_hiboss/pages/profile/upgrade_account_page.dart';
import 'package:flutter/material.dart';

class ProfileModel{
  String? icon;
  String? title;
  String? iconBack;
  Widget? page;

  ProfileModel();
}

List<ProfileModel> profiles = [
  ProfileModel()..icon = 'assets/images/star.svg'..title = 'Nâng cấp phiên bản tốt hơn'..page = const UpgradeAccountPage(),
  ProfileModel()..icon = 'assets/images/Profile.svg'..title = 'Thông tin cá nhân'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Scan.svg'..title = 'Mã QR Profile'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/2 User.svg'..title = 'Quản lý nhân viên'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Chart.svg'..title = 'Báo cáo thống kê'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Paper Plus.svg'..title = 'Tuyển dụng'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Add User.svg'..title = 'Mời tham gia Doanh nghiệp'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Document.svg'..title = 'Tài liệu'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Setting.svg'..title = 'Cài đặt tài khoản'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/3 User.svg'..title = 'Tham gia cộng đồng Hiboss',
  ProfileModel()..icon = 'assets/images/Volume Up.svg'..title = 'Cài đặt thông báo',
  ProfileModel()..icon = 'assets/images/language 1.svg'..title = 'Ngôn ngữ & Khu vực',
  ProfileModel()..icon = 'assets/images/solar_dollar-linear.svg'..title = 'Đơn vị tiền tệ',
  ProfileModel()..icon = 'assets/images/Info Square.svg'..title = 'Chính sách', 
  ProfileModel()..icon = 'assets/images/online-video 1.svg'..title = 'Hướng dẫn sử dụng'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Calling.svg'..title = 'Liên hệ'..iconBack = 'assets/images/navigate_next.svg',
  ProfileModel()..icon = 'assets/images/Group.svg'..title = 'Đăng xuất', 
];