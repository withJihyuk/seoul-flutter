import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:seoul_media/widgets/all_event_button.dart';

class AllEventPage extends StatelessWidget {
  const AllEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0, top: 16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "전체 보기",
                      style:
                          TextStyle(fontFamily: pretendard_600, fontSize: 25),
                    ),
                  ],
                ),
              ),
              const AllEventButton(),
              const AllEventButton(),
              const AllEventButton(),
              const AllEventButton(),
              const AllEventButton(),
              const AllEventButton(),
              const AllEventButton(),
            ],
          ),
        ),
      ),
    );
  }
}
