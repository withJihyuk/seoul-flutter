import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
// import 'package:seoul_media/router.dart';
import 'package:seoul_media/views/home/home_page.dart';

void main() {
  AuthRepository.initialize(appKey: '387c69a14b8f3f06773b6de90621547c');
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '서울한눈',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
      // routeInformationParser: PageRouter.router.routeInformationParser,
      // routeInformationProvider: PageRouter.router.routeInformationProvider,
      // routerDelegate: PageRouter.router.routerDelegate,
    );
  }
}
