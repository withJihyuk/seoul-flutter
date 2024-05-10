import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_media/utils/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';

class MonthEventButton extends StatefulWidget {
  const MonthEventButton({super.key});

  @override
  State<MonthEventButton> createState() => _MonthEventButtonState();
}

class _MonthEventButtonState extends State<MonthEventButton> {
  List<Event> eventData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var object = await fetchEventData();
    setState(() {
      eventData = object;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/detail'),
      child: Container(
        margin: const EdgeInsets.only(right: 27),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffd9d9d9),
            width: 0.8,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        width: 280,
        height: 240,
        child: Column(
          children: [
            Image.network(
              eventData[0].mainImg,
              height: 133,
              width: 240,
              scale: 2,
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    eventData[0].title,
                    style: const TextStyle(
                      fontFamily: pretendard_700,
                      fontSize: 14.4,
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          eventData[0].place,
                          style: const TextStyle(
                            fontFamily: pretendard_500,
                            fontSize: 10.4,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          eventData[0].date,
                          style: const TextStyle(
                            fontFamily: pretendard_500,
                            fontSize: 10.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
