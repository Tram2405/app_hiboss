import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.images.poweredHifiveIcon),
        const SizedBox(height: 9.0),
        const Text('Powered by HifivePLUS', style: AppStyle.h14Normal)
      ],
    );
  }
}
