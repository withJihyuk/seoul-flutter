import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_media/utils/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';

class MonthEventButton extends StatefulWidget {
  final int index; // 추가: 인덱스를 받을 변수

  const MonthEventButton({required key, this.index = 0}) : super(key: key);

  @override
  State<MonthEventButton> createState() => _MonthEventButtonState();
}

class _MonthEventButtonState extends State<MonthEventButton> {
  late Event eventData; // 수정: List 대신 단일 Event 객체

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var object = await fetchEventData();
    setState(() {
      // 수정: 인덱스에 해당하는 이벤트를 가져옴
      eventData = object[widget.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    // 수정: eventData가 null이면 CircularProgressIndicator를 반환하도록 함
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
              eventData.mainImg,
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
                    eventData.title,
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
                          eventData.place,
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
                          eventData.date,
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
