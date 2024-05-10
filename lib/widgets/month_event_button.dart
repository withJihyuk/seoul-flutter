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
  var object = fetchEventData();
  List<Event> eventData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventData = object;
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
            Container(
              margin: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Colors.grey,
              ),
              width: 240,
              height: 134,
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
                  const SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "세종대극장",
                          style: TextStyle(
                            fontFamily: pretendard_500,
                            fontSize: 10.4,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "2024-11-29~2024-11-29",
                          style: TextStyle(
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
