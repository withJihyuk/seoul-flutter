import 'package:flutter/material.dart';
import 'package:seoul_media/views/home/home_page.dart';
import 'package:seoul_media/views/map/map_page.dart';
import 'package:seoul_media/views/nearby_event/nearby_event_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> page = [
    const HomePage(),
    const MapPage(),
    const NearbyEventPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 180, 180, 180),
        selectedItemColor: currentIndex == 0
            ? const Color(0xff558BCF)
            : const Color(0xffAE1932),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: currentIndex == 0
                  ? const Color(0xff558BCF)
                  : const Color.fromARGB(255, 180, 180, 180),
            ),
            label: '추천',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_pin,
              color: currentIndex == 1
                  ? const Color(0xffAE1932)
                  : const Color.fromARGB(255, 180, 180, 180),
            ),
            label: '지도',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "주변",
          )
        ],
      ),
    );
  }
}
