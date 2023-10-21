import 'package:go_router/go_router.dart';

import '../../screens/screens.dart';

final router = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/distance',
      builder: (context, state) => const DistanceScreen(),
    ),

    GoRoute(
      path: '/weight',
      builder: (context, state) => const WeightScreen(),
    ),

    GoRoute(
      path: '/temperature',
      builder: (context, state) => const TemperatureScreen(),
    ),

    GoRoute(
      path: '/time',
      builder: (context, state) => const TimeScreen(),
    ),

    GoRoute(
      path: '/example',
      builder: (context, state) => const ExampleScreen(),
    ),

    GoRoute(
      path: '/example2',
      builder: (context, state) => const ExampleScreen2(),
    ),

  ]
);