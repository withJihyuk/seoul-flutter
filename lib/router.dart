import 'package:go_router/go_router.dart';
import 'package:seoul_media/views/main/main_page.dart';
import 'package:seoul_media/views/map/map_page.dart';

class PageRouter {
  static const _mainPage = "/";
  static const _mapPage = "map";

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: _mainPage,
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            path: _mapPage,
            builder: (context, state) => const MapPage(),
          ),
        ],
      ),
    ],
  );
}
