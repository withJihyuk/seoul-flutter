import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:seoul_media/router.dart';
import 'package:seoul_media/utils/api.dart';
import 'package:seoul_media/utils/data.dart';

void main() async {
  var object = await fetchEventData();
  AuthRepository.initialize(appKey: '387c69a14b8f3f06773b6de90621547c');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '서울한눈',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routeInformationParser: PageRouter.router.routeInformationParser,
      routeInformationProvider: PageRouter.router.routeInformationProvider,
      routerDelegate: PageRouter.router.routerDelegate,
    );
  }
}
