import 'package:flutter/material.dart';
import 'package:seoul_media/router.dart';

void main() {
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
