import 'package:flutter/material.dart';

class ParkingAreaButton extends StatelessWidget {
  const ParkingAreaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 27, vertical: 38),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: const Color(0xff558bcf),
          width: 2,
        ),
        color: Colors.white,
      ),
      height: 90,
    );
  }
}
