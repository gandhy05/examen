import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/pages/calendar_page.dart';
import 'package:movil_wrc_app/pages/dashboard_page.dart';
import 'package:movil_wrc_app/pages/drivers_page.dart';
import 'package:movil_wrc_app/pages/home_page.dart';

class AppRoutes {
  static String home = '/home';
  static String calendar = '/calendar';
  static String dashboard = '/dashboard';
  static String drivers = '/drivers';
}

final routerProv = Provider((ref) => routerConfig);
final routerConfig = GoRouter(routes: [
  GoRoute(
    path: AppRoutes.home,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: AppRoutes.calendar,
    builder: (context, state) => const CalendarPage(),
  ),
  GoRoute(
    path: AppRoutes.dashboard,
    builder: (context, state) => const DashboardPage(),
  ),
  GoRoute(
    path: AppRoutes.drivers,
    builder: (context, state) => const DriversPage(),
  ),
]);
