import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:image_network/image_network.dart';
import 'package:seoul_media/utils/api.dart';
import 'package:seoul_media/utils/data.dart';
import 'package:seoul_media/utils/fonts.dart';

class AllEventButton extends StatefulWidget {
  const AllEventButton({super.key, required this.index});
  final int index;

  @override
  State<AllEventButton> createState() => _AllEventButtonState();
}

class _AllEventButtonState extends State<AllEventButton> {
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
    return GestureDetector(
      onTap: () => context.push('/detail'),
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
        child: Column(
          children: [
            eventData.isEmpty
                ? Container(
                    margin: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      color: Colors.grey,
                    ),
                    width: 240,
                    height: 134,
                  )
                : Container(
                    margin: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: ImageNetwork(
                      image: eventData[widget.index].mainImg,
                      height: 133,
                      width: 240,
                    ),
                  ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        eventData.isEmpty ? "" : eventData[widget.index].title,
                        style: const TextStyle(
                          fontFamily: pretendard_700,
                          fontSize: 14.4,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(),
                      child: Column(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                eventData.isEmpty
                                    ? const SizedBox()
                                    : const Icon(
                                        Icons.location_on_sharp,
                                        size: 17,
                                      ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  eventData.isEmpty
                                      ? ""
                                      : eventData[widget.index].place,
                                  style: const TextStyle(
                                    fontFamily: pretendard_500,
                                    fontSize: 10.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                eventData.isEmpty
                                    ? const SizedBox()
                                    : const Icon(
                                        Icons.calendar_today_outlined,
                                        size: 17,
                                      ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  eventData.isEmpty
                                      ? ""
                                      : eventData[widget.index].date,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
