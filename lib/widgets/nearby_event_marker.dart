import 'package:flutter/cupertino.dart';

class NearbyEventMarker extends StatelessWidget {
  const NearbyEventMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/marker.png',
      width: 60,
    );
  }
}
