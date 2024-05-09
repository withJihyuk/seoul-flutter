import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_media/utils/fonts.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.grey),
                    height: 400,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 27, vertical: 19),
                    height: 80,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "서울시국악관현악단 제362회 정기연주회",
                          style: TextStyle(
                            fontFamily: pretendard_700,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 17,
                                color: Color(0xff558BCF),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "2024-11-29~2024-11-29",
                                style: TextStyle(
                                  fontFamily: pretendard_500,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Text(
                                '₩',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff558BCF),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "입장료 | 유료",
                                style: TextStyle(
                                  fontFamily: pretendard_500,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 27,
                      vertical: 30,
                    ),
                    padding:
                        const EdgeInsets.only(left: 19, top: 17, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: const Color(0xffd9d9d9),
                      ),
                    ),
                    height: 148,
                    width: width,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '이 행사는 세종문화회관에서 진행해요',
                          style: TextStyle(
                              fontFamily: pretendard_500, fontSize: 15),
                        ),
                        Text(
                          "R 50,000원 / S 40,000원 / A 30,000원",
                          style: TextStyle(
                            fontFamily: pretendard_700,
                            fontSize: 20,
                            color: Color(0xff558BCF),
                          ),
                        ),
                        Text(
                          "7세 이상(2017년생 이후 출생자부터 가능)",
                          style: TextStyle(
                            fontFamily: pretendard_500,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 27, vertical: 45),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "지도",
                              style: TextStyle(
                                fontFamily: pretendard_700,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 160,
                              height: 30,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Color(0xff558BCF),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/add.png',
                                    width: 14,
                                  ),
                                  const Text(
                                    "교통편을 확인해요",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: pretendard_700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => context.pop(),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 16),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
