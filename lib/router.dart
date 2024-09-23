import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/page/home/home_page.dart';
import 'package:training_app/presentation/page/log_in.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
        name: 'sign_in', path: '/', builder: (context, state) => LogInPage()),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomePage(),
    )
  ],
);
