import 'dart:ui';

import 'package:flutter_practical_8/main.dart';

import '../../UI/Home/home_detail_screen.dart';
import '../../UI/Home/home_screen.dart';
import '../../UI/Home/palette_detail_screen.dart';
import '../../UI/Home/palette_screen.dart';
import 'package:go_router/go_router.dart';

final homeRouter =
    GoRouter(debugLogDiagnostics: true, initialLocation: '/home', routes: [
  StatefulShellRoute.indexedStack(branches: [
    StatefulShellBranch(routes: [
      GoRoute(
        path: '/home',
        routes: [
          GoRoute(
            path: 'detail/:number',
            builder: (context, state) => HomeDetailScreen(
              number: int.parse(state.pathParameters['number']!),
            ),
          ),
        ],
        builder: (context, state) => const HomeScreen(),
      ),
    ]),
    StatefulShellBranch(routes: [
      GoRoute(
        path: '/palette',
        routes: [
          GoRoute(
              path: 'detail',
              builder: (context, state) =>
                  PaletteDetailScreen(selectedColor: state.extra as Color)),
        ],
        builder: (context, state) => const PaletteScreen(),
      ),
    ])
  ], builder: (context, state, shell) => MainScreen(navigationShell: shell))
]);
