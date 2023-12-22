
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/components/text_form_field/dot_page.dart';
import 'package:app_hiboss/models/introl_model.dart';
import 'package:app_hiboss/pages/register_login/login_page.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController pageController = PageController();
  int _current = 0;

  // void _skipPage() {
  //   if (_current > 0) {
  //     pageController.jumpToPage(--_current);
  //   }
  // }
  void _skipPage() {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );
}

  // void _nextPage() {  //chậm của minh
  //   _current < listIntrols.length - 1
  //       ? pageController.nextPage(
  //           duration: const Duration(milliseconds: 300), curve: Curves.linear)
  //       : Navigator.of(context).push(PageTransition(
  //           type: PageTransitionType.rightToLeft, child: LoginPage()));
  // }
  void _nextPage() {
    //chậm của minh
    if (_current < listIntrols.length - 1) {
      pageController.jumpToPage(++_current);
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    }
  }

  void _changePage(value) {
    _current = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height * (474 + 44) / 844,
              decoration: const BoxDecoration(
                color: AppColor.h214393,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(110.0),
                ),
              ),
            ),
          ),
          PageView(
              controller: pageController,
              onPageChanged: _changePage,
              children: List.generate(listIntrols.length,
                  (index) => Image.asset(listIntrols[index].image ?? ''))),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * (395.0 + 44) / 844,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.hFFFBF6.withOpacity(0),
                    AppColor.hF6F7FF,
                    AppColor.hF6F8FF
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0)
                        .copyWith(bottom: 38.0),
                    child: Text(
                      listIntrols[_current].title ?? '',
                      style: AppStyle.h24Normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0)
                        .copyWith(bottom: 48.0),
                    child: Text(
                      listIntrols[_current].subTitle ?? '',
                      style: AppStyle.h18Normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0)
                        .copyWith(bottom: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          // onTap: _skipPage,
                          onTap: _skipPage,
                          child: const Text('Bỏ qua', style: AppStyle.h18Normal),
                        ),
                        DotPage(
                            itemCount: listIntrols.length, current: _current),
                        GestureDetector(
                          onTap: _nextPage,
                          child: const Text(
                            'Tiếp theo',
                            style: AppStyle.h18Normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
