import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/event_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({
    super.key,
    this.eventdetail,
  });
  final EventModel? eventdetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HiBossAppBar(
        title: 'Chi Tiết Sự Kiện',
        image: 'assets/images/app_bar.png',
        leftIcon: 'assets/images/back1.svg',
        colorText: AppColor.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eventdetail?.tittle ?? '',
                style: const TextStyle(
                    color: AppColor.h063782,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16.0),
              // Text(eventdetail?.timeline ?? '', style: TextStyle(),),
              Row(
                children: [
                  Text(
                    eventdetail?.timeline ?? '',
                    style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.h999999),
                  ),
                  const SizedBox(width: 12.0),
                  SvgPicture.asset('assets/images/Ellipse 95.svg'),
                  const SizedBox(width: 12.0),
                  Text(
                    eventdetail?.date ?? '',
                    style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.h999999),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Image.asset(
                eventdetail?.img ?? '',
                width: MediaQuery.sizeOf(context).width - 32.0,
                height: 360.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Đơn vị tổ chức: ',
                    style: const TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: eventdetail?.organizationalUnits ?? '',
                          style: const TextStyle(
                            color: AppColor.h434343,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ))
                    ]),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Hình thức: ',
                    style: const TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: eventdetail?.status ?? '',
                          style: const TextStyle(
                            color: AppColor.h434343,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ))
                    ]),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Thời gian: ',
                    style: const TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: eventdetail?.timeEvent ?? '',
                          style: const TextStyle(
                            color: AppColor.h434343,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ))
                    ]),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Cách thức tham gia: ',
                    style: const TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: eventdetail?.howToJoin ?? '',
                          style: const TextStyle(
                            color: AppColor.h434343,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ))
                    ]),
              ),
              const SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Địa điểm: ',
                    style: TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      eventdetail?.adress ?? '',
                      style: const TextStyle(
                        color: AppColor.h434343,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mô tả: ',
                    style: TextStyle(
                      color: AppColor.h434343,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      eventdetail?.description ?? '',
                      style: const TextStyle(
                        color: AppColor.h434343,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
