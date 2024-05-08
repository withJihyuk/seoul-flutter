import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:seoul_media/widgets/parking_area_button.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: KakaoMap(
                mapTypeControl: true,
                zoomControl: true,
              ),
            ),
            ParkingAreaButton(),
          ],
        ),
      ),
    );
  }
}
