import 'package:app_hiboss/components/buttons/hiboss_botton1.dart';
import 'package:app_hiboss/models/profile_model.dart';
import 'package:app_hiboss/pages/profile/card_profile_page.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hF2F2FF,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 269.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top + 35),
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 47.0,
                          backgroundImage: AssetImage('assets/images/avta.png'),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            width: 24.0,
                            height: 24.0,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: AppColor.white,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset('assets/images/camera.svg'),
                            // child: Icon(
                            //   Icons.camera_alt,
                            //   size: 16.0,
                            //   color: Colors.blueGrey,
                            // ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Người quản lý',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        ),
                        Image(
                          image:
                              AssetImage('assets/images/arrow_drop_down.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    // HiBossBotton1(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HiBossBotton1(
                          text: '     START - UP     ',
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 18.0,
                  top: MediaQuery.of(context).padding.top + 15,
                  child: SvgPicture.asset('assets/images/back1.svg')),
              Positioned(
                right: 18.0,
                top: MediaQuery.of(context).padding.top + 15,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/avvv.png'))),
                      child: SvgPicture.asset('assets/images/icon_avata.svg'),
                    ),
                    const Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              )
              // child: SvgPicture.asset('assets/images/icon_avata.svg'))
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: profiles.length,
                    itemBuilder: (context, index) {
                      final profile = profiles[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: CardProfilePage(
                          onTap: profile.page == null
                              ? null
                              : () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return profile.page!;
                                    },
                                  ));
                                },
                          profile: profile,
                          textColor: index == 0
                              ? AppColor.h063782
                              : index == profiles.length - 1
                                  ? AppColor.hF04438
                                  : AppColor.h3A3A3C,
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32.0, bottom: 60),
                    child: Text(
                      'Version 2.0 \n Powered by HifivePLUS',
                      style: TextStyle(
                          color: AppColor.h063782,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
