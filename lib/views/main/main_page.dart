import 'package:flutter/material.dart';
import 'package:seoul_media/views/map/map_page.dart';
import 'package:seoul_media/views/recommend/recommend_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> page = [
    const MapPage(),
    const RecommendPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: '지도',
              backgroundColor: Color(0xffae1932)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: '추천',
              backgroundColor: Color(0xff558BCF))
        ],
      ),
    );
  }
}
