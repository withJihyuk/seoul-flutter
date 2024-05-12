import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:seoul_media/router.dart';
import 'package:seoul_media/apis/api.dart';

void main() async {
  var object = await fetchEventData();
  print(object);
  AuthRepository.initialize(appKey: '387c69a14b8f3f06773b6de90621547c');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
