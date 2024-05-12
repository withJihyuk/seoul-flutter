import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_network/image_network.dart';
import 'package:seoul_media/apis/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class EventDetailPage extends StatefulWidget {
  EventDetailPage({super.key, required this.index});
  late int index;
  @override
  State<EventDetailPage> createState() => _EventDetailPageState();
}

class _EventDetailPageState extends State<EventDetailPage> {
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
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(color: Colors.grey),
                          height: 400,
                          child: ImageNetwork(
                            image: eventData[widget.index].mainImg,
                            height: 380,
                            width: 390,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 27, vertical: 19),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                eventData[widget.index].title,
                                style: const TextStyle(
                                  fontFamily: pretendard_700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      size: 17,
                                      color: Color(0xff558BCF),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      eventData[widget.index].date,
                                      style: const TextStyle(
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
                                    const Text(
                                      '₩',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff558BCF),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      eventData[widget.index].isFree,
                                      style: const TextStyle(
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
                          padding: const EdgeInsets.only(
                              left: 19, top: 17, bottom: 25),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '이 행사는 ${eventData[widget.index].place}에서 진행해요',
                                style: const TextStyle(
                                    fontFamily: pretendard_500, fontSize: 15),
                              ),
                              Text(
                                eventData[widget.index].useFee.isEmpty
                                    ? "무료"
                                    : eventData[widget.index].useFee,
                                style: const TextStyle(
                                  fontFamily: pretendard_700,
                                  fontSize: 20,
                                  color: Color(0xff558BCF),
                                ),
                              ),
                              Text(
                                eventData[widget.index].useTrgt,
                                style: const TextStyle(
                                  fontFamily: pretendard_500,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
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
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => _launchURL(Uri.parse(eventData[widget.index].hmpgAddr)),
        child: Container(
          color: const Color(0xff558BCF),
          height: 75,
          alignment: Alignment.center,
          child: const Text(
            "추가 정보",
            style: TextStyle(
              fontFamily: pretendard_700,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
