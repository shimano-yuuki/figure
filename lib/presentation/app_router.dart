import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/page/home/home_page.dart';
import 'package:training_app/presentation/page/log_in.dart';
import 'package:training_app/presentation/page/sign_in_page.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'log_in',
      path: '/',
      builder: (context, state) => LogInPage(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'sign_in_page',
      path: '/sign_in_page',
      builder: (context, state) => SignInPage(),
    )
  ],
);
