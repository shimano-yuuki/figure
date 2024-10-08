import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/page/home/home_page.dart';
import 'package:training_app/presentation/page/log_in.dart';
import 'package:training_app/presentation/page/sign_in_page.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/logInPage',
  routes: [
    GoRoute(
      name: RouteNames.logInPage,
      path: '/logInPage',
      builder: (context, state) => LogInPage(),
    ),
    GoRoute(
      name: RouteNames.homePage,
      path: '/homePage',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: RouteNames.signInPage,
      path: '/signInPage',
      builder: (context, state) => SignInPage(),
    )
  ],
);

class RouteNames {
  static const logInPage = 'logInPage';
  static const homePage = 'homePage';
  static const signInPage = 'signInPage';
}
