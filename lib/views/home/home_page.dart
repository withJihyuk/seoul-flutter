import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:seoul_media/widgets/month_event_button.dart';
import 'package:seoul_media/widgets/schedule_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 60,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "좋은 오후에요 이런 행사는 어떠세요?",
                          style: TextStyle(
                            fontFamily: pretendard_800,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21.0),
                      child: Row(
                        children: [
                          const Text(
                            "공지사항",
                            style: TextStyle(
                              fontFamily: pretendard_600,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "서비스 오픈 안내",
                            style: TextStyle(
                              fontFamily: pretendard_500,
                              fontSize: 15,
                              color: const Color(0xff000000).withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27),
                  child: Text(
                    "다가오는 행사 일정",
                    style: TextStyle(fontFamily: pretendard_600, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: const Color(0xffd9d9d9),
                        width: 1.0,
                      ),
                    ),
                    height: 236,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ScheduleButton(),
                        ScheduleButton(),
                        ScheduleButton(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 58,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27),
                  child: Text(
                    "놓치면 아쉬울 이번달 행사들",
                    style: TextStyle(fontFamily: pretendard_600, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: Row(
                      children: [
                        MonthEventButton(),
                        MonthEventButton(),
                        MonthEventButton(),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => context.go('/map'),
                  child: const Text("Map으로 가기"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
