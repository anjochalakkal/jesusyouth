import 'package:go_router/go_router.dart';
import 'package:jesusyouth/features/dashboard/presentation/pages/dashboardpage.dart';
import 'package:jesusyouth/features/login/presentation/pages/loginpage.dart';
import 'package:jesusyouth/routes/router_paths.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: RouterPaths.login,
    routes: [
      GoRoute(
        path: RouterPaths.login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: RouterPaths.dashboard,
        builder: (context, state) => Dashboardpage(),
      ),
    ],
  );
}
