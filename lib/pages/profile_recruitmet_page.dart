import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:flutter/material.dart';

class ProfileRecrui extends StatefulWidget {
  const ProfileRecrui({super.key});

  @override
  State<ProfileRecrui> createState() => _ProfileRecruiState();
}

class _ProfileRecruiState extends State<ProfileRecrui> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: HiBossAppBar(title: 'Chi tiết tuyển dụng', leftIcon: 'assets/images/back.svg', image: 'assets/images/app_bar.png',),
    );
  }
}