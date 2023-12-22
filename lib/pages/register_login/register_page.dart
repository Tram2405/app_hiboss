import 'package:app_hiboss/components/appbar/appbar_login.dart';
import 'package:app_hiboss/gen/assets.gen.dart';
import 'package:app_hiboss/pages/home/screen_page_1.dart';
import 'package:app_hiboss/pages/home/screen_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

// ignore: camel_case_types
class _RegisterPageState extends State<RegisterPage> {
  // String? _selectedCustomer;
  bool isLoading = false;
  int currentIndex = 0;
  List<bool> isSelected = [true, false];
  List<Widget> pages = [
    const Screen_1(),
    const Screen2(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: const AppBarLogin(
          title: 'Đăng ký tài khoản',
          image: 'Assets.images.loginLogo',
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0)
                .copyWith(top: 8.0, bottom: 10.0),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 46,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buttonIcon(0),
                        buttonIcon(1),
                      ],
                    ),
                  ),
                  pages[selectedIndex],
                ],
              )
            ]),
      ),
    );
  }

  buttonIcon(int index) {
    //index vị trí từng màn hình
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(selectedIndex == index
                ? Assets.images.checkBoxTrue
                : Assets.images.checkBoxFalse),
          ),
          // Icon(
          //   selectedIndex == index
          //       ? Icons.radio_button_checked_rounded
          //       : Icons.radio_button_off,
          //   size: 22.0,
          //   color: index == selectedIndex
          //       ? Hoang_AppColor.blue // đổi màu chứ chưa đổi icon
          //       : Hoang_AppColor.black,
          // ),
          Text(
            () {
              if (index == 0) return 'Doanh Nghiệp';
              return 'Remote sales';
            }(),
          ),
        ]),
      ),
    );
  }
}
