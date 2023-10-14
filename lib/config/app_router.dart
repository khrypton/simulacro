import 'package:go_router/go_router.dart';
import 'package:simulacro/screens/export_screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/choose',
      builder: (context, state) => const ChooseScreen(),
    ),
    GoRoute(
      path: '/study',
      builder: (context, state) => const StudyScreen(),
    ),
    GoRoute(
      path: '/exam',
      builder: (context, state) => const ExamScreen(),
    ),
  ],
);