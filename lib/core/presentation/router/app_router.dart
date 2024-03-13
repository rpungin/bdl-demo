import 'package:bdl_demo/features/games/presentation/pages/profile/profile_page.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/root_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const RootPage(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ];

  final router = GoRouter(routes: _routes);
}
