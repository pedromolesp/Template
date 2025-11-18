import 'package:go_router/go_router.dart';
import 'package:templateapp/features/home/presentation/home_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.inital,
      builder: (_, __) => const HomeScreen(),
    ),
  ],
);

class RouteNames {
  static const inital = 'initial';
  static const errorSplash = 'errorSplash';
}
