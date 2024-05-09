import 'package:flutter/material.dart';
import 'package:seoul_media/utils/fonts.dart';

class ParkingAreaButton extends StatelessWidget {
  const ParkingAreaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 27, vertical: 38),
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: const Color(0xff558bcf),
          width: 2,
        ),
        color: Colors.white,
      ),
      height: 90,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "행사장 근처 주차장을 찾았어요",
                style: TextStyle(
                    fontFamily: pretendard_400,
                    fontSize: 13,
                    color: Color(0xff999999)),
              ),
              Text(
                "2동 주차장",
                style: TextStyle(
                  fontFamily: pretendard_600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Text(
            "2천원/시간",
            style: TextStyle(
                fontFamily: pretendard_700,
                fontSize: 24,
                color: Color(0xff558bcf)),
          )
        ],
      ),
    );
  }
}
