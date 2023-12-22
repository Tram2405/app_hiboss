import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/upgrade_model.dart';
import 'package:app_hiboss/pages/profile/card_profile.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class UpgradeAccountPage extends StatefulWidget {
  const UpgradeAccountPage({super.key});

  @override
  State<UpgradeAccountPage> createState() => _UpgradeAccountPageState();
}

class _UpgradeAccountPageState extends State<UpgradeAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const HiBossAppBar(
          title: 'Nâng Cấp',
          leftIcon: 'assets/images/backk.svg',
          colorText: AppColor.h2758A0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return CardProfile(onTap: () {
                
              }, upgrade: upgrades[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16.0);
            },
            itemCount: upgrades.length));
  }
}
