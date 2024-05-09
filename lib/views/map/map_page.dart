import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:seoul_media/widgets/parking_area_button.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> markers = {}; // 마커 변수
  late KakaoMapController mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            KakaoMap(
              onMapCreated: ((controller) async {
                mapController = controller;

                markers.add(Marker(
                  markerId: UniqueKey().toString(),
                  latLng: await mapController.getCenter(),
                ));

                setState(() {});
              }),
              markers: markers.toList(),
              center: LatLng(35.14269106390803, 126.80059141242707),
            ),
            const ParkingAreaButton(),
          ],
        ),
      ),
    );
  }
}
