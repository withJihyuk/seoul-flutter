import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seoul_media/models/location.dart';
import 'package:seoul_media/utils/fonts.dart';
import 'package:seoul_media/widgets/nearby_event_marker.dart';

class NearbyEventPage extends StatefulWidget {
  const NearbyEventPage({
    super.key,
  });

  @override
  State<NearbyEventPage> createState() => _NearbyEventPageState();
}

class _NearbyEventPageState extends State<NearbyEventPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  double getRandomValueLeftLabels(double minLeftLabel, double maxLeftLabel,
      double minLeft, double maxLeft, List<double> existingLeftLabels) {
    double minValue = min(minLeftLabel, maxLeftLabel);
    double maxValue = max(minLeftLabel, maxLeftLabel);
    double leftResult;

    do {
      leftResult = Random().nextDouble() * (maxValue - minValue) + minValue;
    } while (
        existingLeftLabels.any((label) => (leftResult - label).abs() < 70) ||
            (leftResult - 200).abs() < 70);
    return leftResult;
  }

  double getRandomValueTopLabels(double minTopLabel, double maxTopLabel,
      double minTop, double maxTop, List<double> existingTopLabels) {
    double minValue = min(minTopLabel, maxTopLabel);
    double maxValue = max(minTopLabel, maxTopLabel);
    double topResult;

    do {
      topResult = Random().nextDouble() * (maxValue - minValue) + minValue;
    } while (existingTopLabels.any((label) => (topResult - label).abs() < 70) ||
        (topResult - 225).abs() < 70);
    return topResult;
  }

  @override
  Widget build(BuildContext context) {
    getLocationData();

    List<double> leftLabels = [];
    List<double> topLabels = [];

    double left_1 = getRandomValueLeftLabels(10, 360, 85, 290, leftLabels);
    double top_1 = getRandomValueTopLabels(50, 400, 130, 320, topLabels);
    leftLabels.add(left_1);
    topLabels.add(top_1);

    double left_2 = getRandomValueLeftLabels(10, 360, 85, 290, leftLabels);
    double top_2 = getRandomValueTopLabels(50, 400, 130, 320, topLabels);
    leftLabels.add(left_2);
    topLabels.add(top_2);

    double left_3 = getRandomValueLeftLabels(10, 360, 85, 290, leftLabels);
    double top_3 = getRandomValueTopLabels(50, 400, 130, 320, topLabels);
    leftLabels.add(left_3);
    topLabels.add(top_3);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 28, top: 71, bottom: 43),
              child: const Text(
                "마커를 누르면,\n정보를 확인할 수 있어요",
                style: TextStyle(fontFamily: pretendard_800, fontSize: 25),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/circle.png'),
                Padding(
                  padding: EdgeInsets.only(left: left_1, top: top_1),
                  child: const NearbyEventMarker(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: left_2, top: top_2),
                  child: const NearbyEventMarker(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: left_3, top: top_3),
                  child: const NearbyEventMarker(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
