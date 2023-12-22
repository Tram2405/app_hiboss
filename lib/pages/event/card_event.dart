import 'package:app_hiboss/models/event_model.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
    required this.onPress,
    required this.event,
  });
  final Function()? onPress;
  final EventModel event;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(event.image ?? '', width: 60.0, height: 60.0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.tittle ?? '',
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.h48484A,
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Text(
                      event.status ?? '',
                      style: const TextStyle(
                        color: AppColor.h063782,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Text(
                        '${event.hours} - ${event.date} - ${event.adress}',
                        maxLines: 1,
                        style: const TextStyle(
                          color: AppColor.h48484A,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          GestureDetector(
            onTap: onPress,
            child: SvgPicture.asset(
              'assets/images/navigate_next.svg',
              color: AppColor.h063782,
            ),
          ),
        ],
      ),
    );
  }
}
