import 'package:flutter/material.dart';
import 'package:seoul_media/utils/fonts.dart';

class ScheduleButton extends StatelessWidget {
  const ScheduleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "서울시장 음악파티",
                      style: TextStyle(
                        fontFamily: pretendard_400,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "D+31",
                      style: TextStyle(
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
    );
  }
}
