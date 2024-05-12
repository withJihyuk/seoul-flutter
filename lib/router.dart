import 'package:go_router/go_router.dart';
import 'package:seoul_media/views/all_event/all_event_page.dart';
import 'package:seoul_media/views/home/home_page.dart';
import 'package:seoul_media/views/map/map_page.dart';

class PageRouter {
  static const _homePage = "/";
  static const _mapPage = "map";
  static const _allEventPage = "all";

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: _homePage,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: _mapPage,
            builder: (context, state) => const MapPage(),
          ),
          GoRoute(
            path: _allEventPage,
            builder: (context, state) => const AllEventPage(),
          ),
        ],
      )
    ],
  );
}
