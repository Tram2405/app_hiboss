import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HiBossAppBar(title: 'Sản phẩm và Dịch vụ', leftIcon: 'assets/images/back.svg', image: 'assets/images/app_bar.png'),
      body: Column(
        
      ),
    );
  }
}