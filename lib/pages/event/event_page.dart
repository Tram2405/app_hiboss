import 'package:app_hiboss/components/appbar/hiboss_appbar.dart';
import 'package:app_hiboss/models/event_model.dart';
import 'package:app_hiboss/pages/event/card_event.dart';
import 'package:app_hiboss/pages/event/event_detail.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hF6F8FF,
      appBar: const HiBossAppBar(
        title: 'Sự Kiện',
        image: 'assets/images/app_bar.png',
        leftIcon: 'assets/images/back1.svg',
        colorText: AppColor.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              final event = events[index];

              return CardEvent(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventDetail(
                            eventdetail: event,
                          ),
                        ));
                  },
                  event: event);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12.0);
            },
            itemCount: events.length),
      ),
    );
  }
}
