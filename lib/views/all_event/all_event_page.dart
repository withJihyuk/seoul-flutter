import 'package:flutter/material.dart';
import 'package:seoul_media/apis/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:seoul_media/widgets/all_event_button.dart';

class AllEventPage extends StatefulWidget {
  const AllEventPage({super.key});

  @override
  State<AllEventPage> createState() => _AllEventPageState();
}

class _AllEventPageState extends State<AllEventPage> {
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
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: height,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: eventData.length,
                  itemBuilder: (context, index) {
                    return AllEventButton(
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
