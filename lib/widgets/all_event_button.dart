import 'package:flutter/material.dart';
import 'package:seoul_media/utils/fonts.dart';

class AllEventButton extends StatelessWidget {
  const AllEventButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 28, right: 28, top: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffd9d9d9),
          width: 0.8,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      height: 280,
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
            height: 170,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 17),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "서울시국악관현악단 제362회 정기연주회",
                  style: TextStyle(
                    fontFamily: pretendard_700,
                    fontSize: 14.4,
                  ),
                ),
                SizedBox(
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
                SizedBox(
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
    );
  }
}
