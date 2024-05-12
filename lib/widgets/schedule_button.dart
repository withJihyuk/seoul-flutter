import 'package:flutter/material.dart';
import 'package:seoul_media/apis/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:seoul_media/views/event_detail/event_detail_page.dart';

class ScheduleButton extends StatefulWidget {
  const ScheduleButton({super.key, required this.index});
  final int index;

  @override
  State<ScheduleButton> createState() => _ScheduleButtonState();
}

class _ScheduleButtonState extends State<ScheduleButton> {
  List<Event> eventData = [];
  late int d_day;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var object = await fetchEventData();
    setState(() {
      eventData = object;
      d_day = howManyDay();
    });
  }

  int howManyDay() {
    DateTime currentDate = DateTime.now();
    int currentMonth = currentDate.month;
    int currentDay = currentDate.day;

    String concertDate = eventData[widget.index].date;
    int concertMonth = int.parse(concertDate.substring(5, 7));
    int concertDay = int.parse(concertDate.substring(8, 10));

    if (currentMonth == concertMonth) {
      int daysLeft = concertDay - currentDay;
      return daysLeft;
    } else if (currentMonth < concertMonth) {
      int daysLeft =
          (concertMonth - currentMonth) * 30 + concertDay - currentDay;
      return daysLeft;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    String str = eventData[widget.index].title;
    int value = str.length;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventDetailPage(index: widget.index),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    decoration: const BoxDecoration(
                      color: Color(
                        0xff558BCF,
                      ),
                      shape: BoxShape.circle,
                    ),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "+3",
                      style: TextStyle(
                          fontFamily: pretendard_700,
                          fontSize: 15,
                          color: Color(0xffffffff)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value > 20
                            ? "${eventData[widget.index].title.substring(0, 20)}..."
                            : eventData[widget.index].title,
                        style: const TextStyle(
                          fontFamily: pretendard_400,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "D+$d_day",
                        style: const TextStyle(
                          fontFamily: pretendard_700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
