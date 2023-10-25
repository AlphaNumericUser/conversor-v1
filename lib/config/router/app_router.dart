import 'package:conversor/screens/energia/energia_screen.dart';
import 'package:conversor/screens/volumen/volumen_screen.dart';
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
      path: '/storage',
      builder: (context, state) => const StorageScreen(),
    ),

    GoRoute(
      path: '/energy',
      builder: (context, state) => const EnergiaScreen(),
    ),

    GoRoute(
      path: '/volumen',
      builder: (context, state) => const VolumenScreen(),
    ),

  ]
);